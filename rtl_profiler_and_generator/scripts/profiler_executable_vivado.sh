#!/bin/bash
# Vivado profiling script for single-top-level Vivado IP-based units

echo "=== FPGA Implementation Script for Vivado Floating Point Units (IP-based) ==="
echo "Starting in directory: $(pwd)"

# Create necessary directories
mkdir -p ../reports_vivado
mkdir -p ../reports_vivado/utilization_vivado
mkdir -p ../reports_vivado/timing_vivado

SCRIPT_DIR="$(pwd)"
VIVADO_UNITS_DIR="${SCRIPT_DIR}/../vivado_units"

echo "Looking for VHDL files in: ${VIVADO_UNITS_DIR}"

if [ ! -d "${VIVADO_UNITS_DIR}" ]; then
    echo "ERROR: Directory ${VIVADO_UNITS_DIR} does not exist!"
    exit 1
fi

# List all VHDL files for debugging
echo "All VHDL files in ${VIVADO_UNITS_DIR}:"
find "${VIVADO_UNITS_DIR}" -type f -name "*.vhd" | sort

# Define operator mapping: filename -> operator
declare -A op_map=( ["addf"]="Adder" ["mulf"]="Multiplier" ["divf"]="Divider" )

csv_file="../reports_vivado/vivado_results.csv"
echo "Operator,Bitwidth,Frequency_MHz,clock_period,Converters,Slack_ns,LUTs,Registers,DSPs,BRAMs,SRLs,max_latency,Real_Required_Clock_Period_ns" > $csv_file
echo "Created CSV report file: $csv_file"

# You may want to define your profiling parameters here
for vhdl_path in "${VIVADO_UNITS_DIR}"/*.vhd; do
    [ -e "$vhdl_path" ] || continue
    base=$(basename "$vhdl_path" .vhd)
    operator="${op_map[$base]}"
    if [ -z "$operator" ]; then
        echo "Skipping unknown operator file: $vhdl_path"
        continue
    fi

    # Example parameters (customize as needed)
    bitwidth=32
    frequency=200
    converters="noIO"
    clock_period=$(bc -l <<< "1000/$frequency")
    top_module="$base"

    echo "Processing $vhdl_path as $operator (top: $top_module, freq: $frequency MHz, bitwidth: $bitwidth)"

    # Extract pipeline depth (look for NUM_STAGE or similar in the file)
    max_latency=$(grep -oP 'NUM_STAGE\s*:=\s*\K[0-9]+' "$vhdl_path" | head -1)
    [ -z "$max_latency" ] && max_latency=0

    # Run Vivado
    export UNIT_NAME=$top_module
    export CLOCK_PERIOD=$clock_period
    export UNIT_DIR=$VIVADO_UNITS_DIR
    export REPORT_DIR="${SCRIPT_DIR}/../reports_vivado"

    pushd "${SCRIPT_DIR}" > /dev/null
    echo "  Running Vivado from: $(pwd)"
    echo "  Command: vitis-2023.2 vivado -mode batch -source operator_vivado.tcl"
    vitis-2023.2 vivado -mode batch -source operator_vivado.tcl
    popd > /dev/null

    util_report="../reports_vivado/utilization_vivado/${top_module}_${operator}_${frequency}MHz_${converters}.rpt"
    timing_report="../reports_vivado/timing_vivado/${top_module}_${operator}_${frequency}MHz_${converters}.rpt"

    if [[ ! -f "$util_report" || ! -f "$timing_report" ]]; then
        echo "  WARNING: Expected report files not found!"
        continue
    fi

    slack=$(grep -A 2 "Slack " "$timing_report" | grep -oP "\-?[0-9]+\.[0-9]+" | head -1)
    [ -z "$slack" ] && slack=0

    luts=$(grep -A 5 "CLB Logic" "$util_report" | grep "LUT as Logic" | grep -oP "[0-9]+" | head -1)
    regs=$(grep -A 3 "Register as" "$util_report" | grep "Register as Flip Flop" | grep -oP "[0-9]+" | head -1)
    dsps=$(grep -A 2 "DSP" "$util_report" | grep "DSPs" | grep -oP "[0-9]+" | head -1)
    brams=$(grep -A 2 "BLOCKRAM" "$util_report" | grep "Block RAM Tile" | grep -oP "[0-9]+" | head -1)
    srls=$(grep "LUT as Memory" "$util_report" | grep -oP "[0-9]+" | head -1)

    [ -z "$luts" ] && luts=0
    [ -z "$regs" ] && regs=0
    [ -z "$dsps" ] && dsps=0
    [ -z "$brams" ] && brams=0
    [ -z "$srls" ] && srls=0

    real_required_period=$(echo "$clock_period - ($slack)" | bc -l)

    echo "$operator,$bitwidth,$frequency,$clock_period,$converters,$slack,$luts,$regs,$dsps,$brams,$srls,$max_latency,$real_required_period" >> $csv_file
    echo "  Data added to CSV report (max_latency: $max_latency cycles, real_required_period: $real_required_period ns)"
    echo "----------------------------------------"
done

echo "All processing complete. Results saved to ../reports_vivado/"