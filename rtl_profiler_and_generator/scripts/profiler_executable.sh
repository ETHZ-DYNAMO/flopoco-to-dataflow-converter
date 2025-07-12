#!/bin/bash
# Debugged runner.sh - With enhanced verbosity for troubleshooting and pipeline depth extraction

echo "=== FPGA Implementation Script for Floating Point Units ==="
echo "Starting in directory: $(pwd)"

# Create necessary directories
mkdir -p ../reports
mkdir -p ../reports/utilization
mkdir -p ../reports/timing

CACHE_FILE=".last_dynamatic_path"

# Function to check if required folders exist and are non-empty
check_dynamatic_path() {
  local path="$1"
  if [[ ! -d "$path/data/vhdl/handshake" || ! "$(ls -A "$path/data/vhdl/handshake")" ]]; then
    return 1
  fi
  if [[ ! -d "$path/data/vhdl/support" || ! "$(ls -A "$path/data/vhdl/support")" ]]; then
    return 1
  fi
  return 0
}

# Load cached path if it exists
if [[ -f "$CACHE_FILE" ]]; then
  DYNAMATIC_REPO="$(cat "$CACHE_FILE")"
  if ! check_dynamatic_path "$DYNAMATIC_REPO"; then
    unset DYNAMATIC_REPO
  fi
fi

# Prompt user if no valid cached path
if [[ -z "$DYNAMATIC_REPO" ]]; then
  read -rp "Enter absolute path to Dynamatic repo: " DYNAMATIC_REPO
  if ! check_dynamatic_path "$DYNAMATIC_REPO"; then
    echo "Error: Required folders not found or empty at $DYNAMATIC_REPO"
    exit 1
  fi
  echo "$DYNAMATIC_REPO" > "$CACHE_FILE"
fi

mkdir -p ../dependencies
# Copy required dependencies from Dynamatic
find "$DYNAMATIC_REPO/data/vhdl/handshake/" -type f ! -name "constant.vhd" -exec cp {} ../dependencies/ \;
find "$DYNAMATIC_REPO/data/vhdl/support/" -type f ! -name "constant.vhd" -exec cp {} ../dependencies/ \;

echo "Copied handshake and support dependencies from: $DYNAMATIC_REPO"

# Get absolute path to current directory
SCRIPT_DIR="$(pwd)"
GENERATED_UNITS_DIR="${SCRIPT_DIR}/../generated_units"

echo "Looking for unit directories in: ${GENERATED_UNITS_DIR}"

# Check if the generated_units directory exists
if [ ! -d "${GENERATED_UNITS_DIR}" ]; then
    echo "ERROR: Directory ${GENERATED_UNITS_DIR} does not exist!"
    exit 1
fi

# List all directories in generated_units for debugging
echo "All directories in ${GENERATED_UNITS_DIR}:"
find "${GENERATED_UNITS_DIR}" -type d -maxdepth 1 | sort

# Get a list of all unit directories
echo "Searching for FloatingPoint* directories..."
ops_regex=$(awk -F',' 'NR>1 {print $2}' operator_mappings.csv | paste -sd '|' -)
unit_dirs=$(find "${GENERATED_UNITS_DIR}" -type d -name "FloatingPoint*" | grep "noIO" | grep -E "$ops_regex")
unit_count=$(echo "$unit_dirs" | grep -v "^$" | wc -l)

echo "Found $unit_count unit directories matching 'FloatingPoint*' pattern."
echo "Unit directories found:"
echo "$unit_dirs"

if [ $unit_count -eq 0 ]; then
    echo "ERROR: No floating point unit directories found! Check directory naming."
    exit 1
fi

# Create the CSV header with new latency_cycles and real delay fields
csv_file="../reports/area_timing_summary.csv"
echo "Operator,Bitwidth,Frequency_MHz,Flopoco_clock_period,Converters,Slack_ns,LUTs,Registers,DSPs,BRAMs,SRLs,latency_cycles,Operating_Clock_Period_ns" > $csv_file
echo "Created CSV report file: $csv_file"

# Function to extract maximum pipeline depth from operator.vhd
extract_max_pipeline_depth() {
    local vhd_file="$1"
    local max_depth=0
    
    echo "    Extracting pipeline depths from: $vhd_file" >&2
    

    while IFS= read -r line; do
        if [[ $line =~ --[[:space:]]*Pipeline[[:space:]]+depth:[[:space:]]*([0-9]+)[[:space:]]*cycles? ]]; then
            depth="${BASH_REMATCH[1]}"
            echo "    Found pipeline depth: $depth cycles" >&2
            if [ "$depth" -gt "$max_depth" ]; then
                max_depth="$depth"
            fi
        fi
    done < "$vhd_file"
    
    echo "    Maximum pipeline depth found: $max_depth cycles" >&2
    echo "$max_depth"
}

# Process each unit directory
unit_index=1
echo "$unit_dirs" | while read unit_dir; do
    # Skip empty lines
    if [ -z "$unit_dir" ]; then
        continue
    fi
    
    # Extract directory name and parse components
    dir_name=$(basename "$unit_dir")
    echo "[$unit_index/$unit_count] Processing directory: $dir_name (Full path: $unit_dir)"
    
    # List files in the directory for debugging
    echo "  Files in directory:"
    ls -la "$unit_dir"
    
    # Parse directory name to extract information
    if [[ $dir_name =~ FloatingPoint([A-Za-z]+)_([0-9]+)_([0-9]+)_([A-Za-z]+) ]]; then
        operator="${BASH_REMATCH[1]}"
        bitwidth="${BASH_REMATCH[2]}"
        frequency="${BASH_REMATCH[3]}"
        converters="${BASH_REMATCH[4]}"
        
        echo "  Extracted info: Operator=$operator, Bitwidth=$bitwidth, Frequency=${frequency}MHz, Converters=$converters"
        
        # Calculate clock period from frequency
        clock_period=$(bc -l <<< "1000/$frequency")
        echo "  Clock period: $clock_period ns"
        
        # Determine top module name based on operator
    top_module=$(awk -F',' -v operator="$operator" '$2==operator {print $4}' operator_mappings.csv)
    if [ -z "$top_module" ]; then
        echo "  Skipping unknown operator type: $operator"
        continue
    fi

        
        echo "  Using top module: $top_module"
        
        # Check if required files exist
        if [[ ! -f "$unit_dir/operator.vhd" || ! -f "$unit_dir/wrapper.vhd" ]]; then
            echo "  ERROR: Required VHDL files not found in $unit_dir"
            echo "  Files present in directory:"
            ls -la "$unit_dir"
            continue
        fi
        
        # Extract maximum pipeline depth from operator.vhd
        echo "  Extracting pipeline depth information..."
        latency_cycles=$(extract_max_pipeline_depth "$unit_dir/operator.vhd")
        echo "  Maximum latency found: $latency_cycles cycles"
        
        # Run Vivado with the appropriate environment variables
        echo "  Running Vivado synthesis and implementation..."
        export UNIT_NAME=$top_module
        export CLOCK_PERIOD=$clock_period
        export UNIT_DIR=$unit_dir
        export REPORT_DIR="${SCRIPT_DIR}/../reports"
        
        # Change to scripts directory to run Vivado
        pushd "${SCRIPT_DIR}/scripts" > /dev/null
        echo "  Running Vivado from: $(pwd)"
        echo "  Command: vitis-2023.2 vivado -mode batch -source operator.tcl"
        vitis-2023.2 vivado -mode batch -source operator.tcl
        popd > /dev/null
        
        # Check if report files exist
        util_report="../reports/utilization/${top_module}_${operator}_${frequency}MHz_${converters}.rpt"
        timing_report="../reports/timing/${top_module}_${operator}_${frequency}MHz_${converters}.rpt"
        
        if [[ ! -f "$util_report" || ! -f "$timing_report" ]]; then
            echo "  WARNING: Expected report files not found!"
            echo "  Utilization report should be: $util_report"
            echo "  Timing report should be: $timing_report"
            continue
        fi
        
        # Extract data for CSV
        echo "  Extracting report data for CSV..."
        
        # Extract slack from the timing file
        slack=$(grep -A 2 "Slack " "$timing_report" | grep -oP "\-?[0-9]+\.[0-9]+" | head -1)
        if [ -z "$slack" ]; then
            slack=$(grep -A 2 "Slack:" "$timing_report" | grep -oP "\-?[0-9]+\.[0-9]+" | head -1)
        fi
        
        # Extract area information from utilization file
        luts=$(grep -A 5 "Slice LUTs" "$util_report" | grep "LUT as Logic" | grep -oP "[0-9]+" | head -1)
        regs=$(grep -A 3 "Register as" "$util_report" | grep "Register as Flip Flop" | grep -oP "[0-9]+" | head -1)
        dsps=$(grep -A 2 "DSP" "$util_report" | grep "DSPs" | grep -oP "[0-9]+" | head -1)
        brams=$(grep -A 2 "Block RAM Tile" "$util_report" | grep "Block RAM Tile" | grep -oP "[0-9]+" | head -1)
        srls=$(grep "LUT as Memory" "$util_report" | grep -oP "[0-9]+" | head -1)
        
        # Set defaults for empty values
        [ -z "$luts" ] && luts=0
        [ -z "$regs" ] && regs=0
        [ -z "$dsps" ] && dsps=0
        [ -z "$brams" ] && brams=0
        [ -z "$srls" ] && srls=0
        [ -z "$latency_cycles" ] && latency_cycles=0
        [ -z "$slack" ] && slack=0
        
        # Calculate real required clock period
        # Real period = clock_period - slack
        if [ -n "$slack" ] && [ -n "$clock_period" ]; then
            real_required_period=$(echo "$clock_period - ($slack)" | bc -l)
        else
            real_required_period="N/A"
        fi
        echo "  Real required clock period: $real_required_period ns (clock_period: $clock_period ns - slack: $slack ns)"
        
        # Add to CSV with new latency_cycles and real delay fields
        echo "$operator,$bitwidth,$frequency,$clock_period,$converters,$slack,$luts,$regs,$dsps,$brams,$srls,$latency_cycles,$real_required_period" >> $csv_file
        echo "  Data added to CSV report (latency_cycles: $latency_cycles cycles, real_required_period: $real_required_period ns)"
    else
        echo "  ERROR: Could not parse directory name format: $dir_name"
    fi
    
    unit_index=$((unit_index + 1))
    echo "----------------------------------------"
done

echo "All processing complete. Results saved to ../reports/"
