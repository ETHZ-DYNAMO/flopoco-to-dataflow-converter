#!/bin/bash

# Integrated FPGA Implementation Script for Floating Point Units
echo "=== Integrated FPGA Implementation Script for Floating Point Units ==="
echo "Starting in directory: $(pwd)"

# Create necessary directories
mkdir -p ../rtl_profiler_and_generator/generated_units
mkdir -p ../reports
mkdir -p ../reports/utilization
mkdir -p ../reports/timing

# Get absolute path to current directory
SCRIPT_DIR="$(pwd)"

# Create the CSV header
csv_file="../reports/area_timing_summary.csv"
echo "Operator,Bitwidth,Frequency_MHz,clock_period,Converters,Slack_ns,LUTs,Registers,DSPs,BRAMs,SRLs,max_latency,Real_Required_Clock_Period_ns" > $csv_file
echo "Created CSV report file: $csv_file"

# Define arrays for generation
declare -a ops=(
    "FloatingPointAdder"
)
declare -a bits=(32 64)
declare -a freqs=(100 800)
declare -a conversions=("none" "input" "output" "both")

# Define operator mappings (replacing the CSV dependency)
declare -A op_to_csv_op=(
    ["FloatingPointAdder"]="Adder"
    ["FloatingPointMultiplier"]="Multiplier"
    ["FloatingPointDivider"]="Divider"
    ["FloatingPointSubtractor"]="Subtractor"
    ["FloatingPointComparator"]="Comparator"
    ["FloatingPointPower"]="Power"
    ["FloatingPointSquareRoot"]="SquareRoot"
    ["FloatingPointExponential"]="Exponential"
    ["FloatingPointLogarithm"]="Logarithm"
)

declare -A op_to_top_module=(
    ["FloatingPointAdder"]="fadd_op"
    ["FloatingPointMultiplier"]="fmul_op"
    ["FloatingPointDivider"]="fdiv_op"
    ["FloatingPointSubtractor"]="fsub_op"
    ["FloatingPointComparator"]="cmpf_op"
    ["FloatingPointPower"]="fpow_op"
    ["FloatingPointSquareRoot"]="fsqrt_op"
    ["FloatingPointExponential"]="fexp_op"
    ["FloatingPointLogarithm"]="flog_op"
)

unit_count=0
for op in "${ops[@]}"; do
    for bit in "${bits[@]}"; do
        for freq in "${freqs[@]}"; do
            for conv in "${conversions[@]}"; do
                unit_count=$((unit_count + 1))
            done
        done
    done
done

echo "Will generate and process $unit_count floating point units"

unit_index=1
for op in "${ops[@]}"; do
    for bit in "${bits[@]}"; do
        for freq in "${freqs[@]}"; do
            for conv in "${conversions[@]}"; do
                echo "[$unit_index/$unit_count] Processing: $op, ${bit}-bit, ${freq}MHz, conversion=$conv"
                
                # Determine conversion flags and labels
                case $conv in
                    none)
                        in_flag=""
                        out_flag=""
                        conv_label="wIO"
                        ;;
                    input)
                        in_flag="--noInputConversion"
                        out_flag=""
                        conv_label="noIN"
                        ;;
                    output)
                        in_flag=""
                        out_flag="--noOutputConversion"
                        conv_label="noOUT"
                        ;;
                    both)
                        in_flag="--noInputConversion"
                        out_flag="--noOutputConversion"
                        conv_label="noINOUT"
                        ;;
                esac
                
                # Create unit directory
                unit_dir="../generation_results0425/${op}${bit}${freq}_${conv_label}"
                
                # Skip if already exists
                if [ -d "$unit_dir" ]; then
                    echo "  Unit directory already exists, skipping generation: $unit_dir"
                else
                    echo "  Generating unit in: $unit_dir"
                    mkdir -p "$unit_dir"
                    
                    # Generate the floating point unit
                    sudo python3 float_gen.py \
                        --name "$op" \
                        --bitSize "$bit" \
                        --targetFrequencyMHz "$freq" \
                        $in_flag \
                        $out_flag \
                        --wrapper_file_name "$unit_dir/wrapper.vhd" \
                        --out_file_name "$unit_dir/operator.vhd"
                    
                    if [ $? -ne 0 ]; then
                        echo "  ERROR: Generation failed for $op"
                        unit_index=$((unit_index + 1))
                        continue
                    fi
                fi
                
                # Check if required files exist
                if [[ ! -f "$unit_dir/operator.vhd" || ! -f "$unit_dir/wrapper.vhd" ]]; then
                    echo "  ERROR: Required VHDL files not found in $unit_dir"
                    unit_index=$((unit_index + 1))
                    continue
                fi
                
                # Get operator mappings
                csv_op="${op_to_csv_op[$op]}"
                top_module="${op_to_top_module[$op]}"
                
                if [ -z "$top_module" ]; then
                    echo "  ERROR: Unknown operator type: $op"
                    unit_index=$((unit_index + 1))
                    continue
                fi
                
                echo "  Using CSV operator: $csv_op, Top module: $top_module"
                
                # Calculate clock period
                clock_period=$(bc -l <<< "1000/$freq")
                echo "  Clock period: $clock_period ns"
                
                # Call the profiler with direct arguments
                echo "  Running profiler..."
                ../rtl_profiler_and_generator//scripts/profiler.sh \
                    --unit-dir "$unit_dir" \
                    --operator "$csv_op" \
                    --bitwidth "$bit" \
                    --frequency "$freq" \
                    --clock-period "$clock_period" \
                    --converters "$conv_label" \
                    --top-module "$top_module" \
                    --csv-file "$csv_file"
                
                if [ $? -ne 0 ]; then
                    echo "  ERROR: Profiler failed for $op"
                fi
                
                unit_index=$((unit_index + 1))
                echo "----------------------------------------"
            done
        done
    done
done

# After all units are processed, run the component JSON generator
echo "=== Generating Component JSON ==="
./component_json_generator.py \
    --csv-file "$csv_file" \
    --operator-mappings-file "operator_mappings.csv" \
    --component-json-path "../component_json/base_component.json"

if [ $? -ne 0 ]; then
    echo "ERROR: Component JSON generation failed"
    exit 1
fi

# Run the RTL generator
echo "=== Generating RTL Wrappers ==="
./rtl_generator.sh \
    --csv-file "$csv_file" \
    --operator-mappings-file "operator_mappings.csv" \
    --component-json-path "../component_json/base_component.json" \
    --generated-units-dir "../generation_results0425" \
    --wrapper-merge-dir "../unit_repositories_for_merge" \
    --ops-dir "../operator_&_wrappers_vhd"

if [ $? -ne 0 ]; then
    echo "ERROR: RTL generation failed"
    exit 1
fi

echo "All processing complete. Results saved to ../reports/"
echo "Component JSON updated and RTL wrappers generated."