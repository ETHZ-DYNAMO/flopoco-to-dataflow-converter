#!/bin/bash
# Improved runner.sh - Clean output and proper dependency management

echo "=== FPGA Implementation Script for Floating Point Units ==="

# Create necessary directories
mkdir -p ../reports/{utilization,timing}

CACHE_FILE=".last_dynamatic_path"

# Function to check if required folders exist and are non-empty
check_dynamatic_path() {
    local path="$1"
    [[ -d "$path/data/vhdl/handshake" && "$(ls -A "$path/data/vhdl/handshake")" ]] && \
    [[ -d "$path/data/vhdl/support" && "$(ls -A "$path/data/vhdl/support")" ]]
}

# Load or prompt for Dynamatic path
if [[ -f "$CACHE_FILE" ]]; then
    DYNAMATIC_REPO="$(cat "$CACHE_FILE")"
    if ! check_dynamatic_path "$DYNAMATIC_REPO"; then
        unset DYNAMATIC_REPO
    fi
fi

if [[ -z "$DYNAMATIC_REPO" ]]; then
    read -rp "Enter absolute path to Dynamatic repo: " DYNAMATIC_REPO
    if ! check_dynamatic_path "$DYNAMATIC_REPO"; then
        echo "Error: Required folders not found or empty at $DYNAMATIC_REPO"
        exit 1
    fi
    echo "$DYNAMATIC_REPO" > "$CACHE_FILE"
fi

export DYNAMATIC_REPO

# Setup dependencies
mkdir -p ../dependencies
cp -r "$DYNAMATIC_REPO/data/vhdl/handshake" ../dependencies/
cp -r "$DYNAMATIC_REPO/data/vhdl/support" ../dependencies/
rm -f ../dependencies/handshake/constant.vhd ../dependencies/support/constant.vhd

echo "Dependencies copied from: $DYNAMATIC_REPO"

# Find unit directories
SCRIPT_DIR="$(pwd)"
GENERATED_UNITS_DIR="${SCRIPT_DIR}/../generated_units"

if [[ ! -d "$GENERATED_UNITS_DIR" ]]; then
    echo "ERROR: Directory $GENERATED_UNITS_DIR does not exist!"
    exit 1
fi

# Get unit directories based on operator_mappings.csv
ops_regex=$(awk -F',' 'NR>1 {print $2}' operator_mappings.csv | paste -sd '|' -)
unit_dirs=$(find "$GENERATED_UNITS_DIR" -type d -name "FloatingPoint*" | grep "noIO" | grep -E "$ops_regex")
unit_count=$(echo "$unit_dirs" | grep -v "^$" | wc -l)

echo "Found $unit_count units to synthesize"

if [[ $unit_count -eq 0 ]]; then
    echo "ERROR: No floating point unit directories found!"
    exit 1
fi

# Create CSV report
csv_file="../reports/area_timing_summary.csv"
echo "Operator,Bitwidth,Frequency_MHz,Flopoco_clock_period,Converters,Slack_ns,LUTs,Registers,DSPs,BRAMs,SRLs,latency_cycles,Operating_Clock_Period_ns" > "$csv_file"

# Function to extract maximum pipeline depth from operator.vhd
extract_max_pipeline_depth() {
    local vhd_file="$1"
    local max_depth=0
    
    while IFS= read -r line; do
        if [[ $line =~ --[[:space:]]*Pipeline[[:space:]]+depth:[[:space:]]*([0-9]+)[[:space:]]*cycles? ]]; then
            depth="${BASH_REMATCH[1]}"
            if [[ $depth -gt $max_depth ]]; then
                max_depth="$depth"
            fi
        fi
    done < "$vhd_file"
    
    echo "$max_depth"
}

# Function to get component name from operator_mappings.csv
get_component_name() {
    local operator="$1"
    awk -F',' -v op="$operator" '$2==op {print $5}' operator_mappings.csv
}

# Function to get top module name from operator_mappings.csv
get_top_module() {
    local operator="$1"
    awk -F',' -v op="$operator" '$2==op {print $4}' operator_mappings.csv
}

# Process each unit directory
unit_index=1
echo "$unit_dirs" | while read -r unit_dir; do
    [[ -z "$unit_dir" ]] && continue
    
    dir_name=$(basename "$unit_dir")
    echo "[$unit_index/$unit_count] Processing: $dir_name"
    
    # Parse directory name
    if [[ $dir_name =~ FloatingPoint([A-Za-z]+)_([0-9]+)_([0-9]+)_([A-Za-z]+) ]]; then
        operator="${BASH_REMATCH[1]}"
        bitwidth="${BASH_REMATCH[2]}"
        frequency="${BASH_REMATCH[3]}"
        converters="${BASH_REMATCH[4]}"
        
        # Get component and top module names from CSV
        component_name=$(get_component_name "$operator")
        top_module=$(get_top_module "$operator")
        
        if [[ -z "$top_module" || -z "$component_name" ]]; then
            echo "  ERROR: Unknown operator type: $operator"
            continue
        fi
        
        # Check required files exist
        if [[ ! -f "$unit_dir/operator.vhd" || ! -f "$unit_dir/wrapper.vhd" ]]; then
            echo "  ERROR: Required VHDL files not found"
            continue
        fi
        
        # Calculate clock period and extract pipeline depth
        clock_period=$(bc -l <<< "1000/$frequency")
        latency_cycles=$(extract_max_pipeline_depth "$unit_dir/operator.vhd")
        
        # Set environment variables for Vivado
        export UNIT_NAME="$top_module"
        export CLOCK_PERIOD="$clock_period"
        export UNIT_DIR="$unit_dir"
        export REPORT_DIR="${SCRIPT_DIR}/../reports"
        export COMPONENT_NAME="$component_name"
        
        # Run Vivado synthesis
        pushd "${SCRIPT_DIR}/scripts" > /dev/null
        vitis-2023.2 vivado -mode batch -source operator.tcl
        popd > /dev/null
        
        # Check if reports were generated
        util_report="../reports/utilization/${top_module}_${operator}_${frequency}MHz_${converters}.rpt"
        timing_report="../reports/timing/${top_module}_${operator}_${frequency}MHz_${converters}.rpt"
        
        if [[ ! -f "$util_report" || ! -f "$timing_report" ]]; then
            echo "  ERROR: Report files not generated"
            continue
        fi
        
        # Extract data for CSV
        slack=$(grep -A 2 "Slack " "$timing_report" | grep -oP "\-?[0-9]+\.[0-9]+" | head -1)
        [[ -z "$slack" ]] && slack=$(grep -A 2 "Slack:" "$timing_report" | grep -oP "\-?[0-9]+\.[0-9]+" | head -1)
        
        luts=$(grep -A 5 "Slice LUTs" "$util_report" | grep "LUT as Logic" | grep -oP "[0-9]+" | head -1)
        regs=$(grep -A 3 "Register as" "$util_report" | grep "Register as Flip Flop" | grep -oP "[0-9]+" | head -1)
        dsps=$(grep -A 2 "DSP" "$util_report" | grep "DSPs" | grep -oP "[0-9]+" | head -1)
        brams=$(grep -A 2 "Block RAM Tile" "$util_report" | grep "Block RAM Tile" | grep -oP "[0-9]+" | head -1)
        srls=$(grep "LUT as Memory" "$util_report" | grep -oP "[0-9]+" | head -1)
        
        # Set defaults for empty values
        [[ -z "$luts" ]] && luts=0
        [[ -z "$regs" ]] && regs=0
        [[ -z "$dsps" ]] && dsps=0
        [[ -z "$brams" ]] && brams=0
        [[ -z "$srls" ]] && srls=0
        [[ -z "$latency_cycles" ]] && latency_cycles=0
        [[ -z "$slack" ]] && slack=0
        
        # Calculate real required clock period
        real_required_period=$(echo "$clock_period - ($slack)" | bc -l)
        
        # Add to CSV
        echo "$operator,$bitwidth,$frequency,$clock_period,$converters,$slack,$luts,$regs,$dsps,$brams,$srls,$latency_cycles,$real_required_period" >> "$csv_file"
        echo "  Complete - Slack: ${slack}ns, LUTs: $luts, Latency: ${latency_cycles} cycles"
    else
        echo "  ERROR: Could not parse directory name format: $dir_name"
    fi
    
    unit_index=$((unit_index + 1))
done

echo "All processing complete. Results in ../reports/"
