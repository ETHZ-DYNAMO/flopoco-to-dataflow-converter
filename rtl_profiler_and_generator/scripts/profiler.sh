#!/bin/bash
# Simplified profiler.sh - No regex, direct argument passing

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --unit-dir)
            UNIT_DIR="$2"
            shift 2
            ;;
        --operator)
            OPERATOR="$2"
            shift 2
            ;;
        --bitwidth)
            BITWIDTH="$2"
            shift 2
            ;;
        --frequency)
            FREQUENCY="$2"
            shift 2
            ;;
        --clock-period)
            CLOCK_PERIOD="$2"
            shift 2
            ;;
        --converters)
            CONVERTERS="$2"
            shift 2
            ;;
        --top-module)
            TOP_MODULE="$2"
            shift 2
            ;;
        --csv-file)
            CSV_FILE="$2"
            shift 2
            ;;
        *)
            echo "Unknown argument: $1"
            exit 1
            ;;
    esac
done

# Validate required arguments
if [[ -z "$UNIT_DIR" || -z "$OPERATOR" || -z "$BITWIDTH" || -z "$FREQUENCY" || -z "$CLOCK_PERIOD" || -z "$CONVERTERS" || -z "$TOP_MODULE" || -z "$CSV_FILE" ]]; then
    echo "ERROR: Missing required arguments"
    echo "Usage: $0 --unit-dir <dir> --operator <op> --bitwidth <bits> --frequency <freq> --clock-period <period> --converters <conv> --top-module <module> --csv-file <csv>"
    exit 1
fi

echo "=== Profiling Unit ==="
echo "Unit directory: $UNIT_DIR"
echo "Operator: $OPERATOR"
echo "Bitwidth: $BITWIDTH"
echo "Frequency: ${FREQUENCY}MHz"
echo "Clock period: $CLOCK_PERIOD ns"
echo "Converters: $CONVERTERS"
echo "Top module: $TOP_MODULE"

# Get absolute paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
UNIT_DIR_ABS="$(cd "$UNIT_DIR" && pwd)"

echo "Script directory: $SCRIPT_DIR"
echo "Absolute unit directory: $UNIT_DIR_ABS"

# Function to extract maximum pipeline depth from operator.vhd
extract_max_pipeline_depth() {
    local vhd_file="$1"
    local max_depth=0
    
    echo "  Extracting pipeline depths from: $vhd_file"
    
    # Find all lines containing "Pipeline depth:" and extract the numeric values
    while IFS= read -r line; do
        if [[ $line =~ --[[:space:]]Pipeline[[:space:]]+depth:[[:space:]]([0-9]+)[[:space:]]*cycles? ]]; then
            depth="${BASH_REMATCH[1]}"
            echo "  Found pipeline depth: $depth cycles"
            if [ "$depth" -gt "$max_depth" ]; then
                max_depth="$depth"
            fi
        fi
    done < "$vhd_file"
    
    echo "  Maximum pipeline depth found: $max_depth cycles"
    echo "$max_depth"
}

# Check if required files exist
if [[ ! -f "$UNIT_DIR_ABS/operator.vhd" || ! -f "$UNIT_DIR_ABS/wrapper.vhd" ]]; then
    echo "ERROR: Required VHDL files not found in $UNIT_DIR_ABS"
    echo "Files present in directory:"
    ls -la "$UNIT_DIR_ABS"
    exit 1
fi

# Extract maximum pipeline depth from operator.vhd
echo "Extracting pipeline depth information..."
max_latency=$(extract_max_pipeline_depth "$UNIT_DIR_ABS/operator.vhd")
echo "Maximum latency found: $max_latency cycles"

# Run Vivado with the appropriate environment variables
echo "Running Vivado synthesis and implementation..."
export UNIT_NAME=$TOP_MODULE
export CLOCK_PERIOD=$CLOCK_PERIOD
export UNIT_DIR=$UNIT_DIR_ABS
export REPORT_DIR="${SCRIPT_DIR}/../reports"

# Change to scripts directory to run Vivado
pushd "${SCRIPT_DIR}" > /dev/null
echo "Running Vivado from: $(pwd)"
echo "Command: vitis-2023.2 vivado -mode batch -source operator.tcl"
vitis-2023.2 vivado -mode batch -source operator.tcl
vivado_exit_code=$?
popd > /dev/null

if [ $vivado_exit_code -ne 0 ]; then
    echo "ERROR: Vivado execution failed with exit code $vivado_exit_code"
    exit 1
fi

# Check if report files exist
util_report="${SCRIPT_DIR}/../reports/utilization/${TOP_MODULE}${OPERATOR}${FREQUENCY}MHz_${CONVERTERS}.rpt"
timing_report="${SCRIPT_DIR}/../reports/timing/${TOP_MODULE}${OPERATOR}${FREQUENCY}MHz_${CONVERTERS}.rpt"

if [[ ! -f "$util_report" || ! -f "$timing_report" ]]; then
    echo "WARNING: Expected report files not found!"
    echo "Utilization report should be: $util_report"
    echo "Timing report should be: $timing_report"
    echo "Available utilization reports:"
    ls -la "${SCRIPT_DIR}/../reports/utilization/" 2>/dev/null || echo "No utilization reports found"
    echo "Available timing reports:"
    ls -la "${SCRIPT_DIR}/../reports/timing/" 2>/dev/null || echo "No timing reports found"
    exit 1
fi

# Extract data for CSV
echo "Extracting report data for CSV..."

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
[ -z "$max_latency" ] && max_latency=0
[ -z "$slack" ] && slack=0

# Calculate real required clock period
# Real period = clock_period - slack
if [ -n "$slack" ] && [ -n "$CLOCK_PERIOD" ]; then
    real_required_period=$(echo "$CLOCK_PERIOD - ($slack)" | bc -l)
else
    real_required_period="N/A"
fi

echo "Extracted values:"
echo "  Slack: $slack ns"
echo "  LUTs: $luts"
echo "  Registers: $regs"
echo "  DSPs: $dsps"
echo "  BRAMs: $brams"
echo "  SRLs: $srls"
echo "  Max latency: $max_latency cycles"
echo "  Real required clock period: $real_required_period ns"

# Add to CSV with new max_latency and real delay fields
echo "$OPERATOR,$BITWIDTH,$FREQUENCY,$CLOCK_PERIOD,$CONVERTERS,$slack,$luts,$regs,$dsps,$brams,$srls,$max_latency,$real_required_period" >> "$CSV_FILE"
echo "Data added to CSV report: $CSV_FILE"

echo "Profiling complete for $OPERATOR ($BITWIDTH-bit, ${FREQUENCY}MHz, $CONVERTERS)"