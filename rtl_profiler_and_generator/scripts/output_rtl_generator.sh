#!/bin/bash

set -e

JSON_FILE="../component_json/base_component.json"
CSV_FILE="../reports/area_timing_summary.csv"
GEN_UNITS_DIR="../generated_units"
WRAPPER_MERGE_DIR="../unit_repositories_for_merge"
OPS_DIR="../output_rtl"
FLOPOCO_VHD="$OPS_DIR/flopoco_ip_cores.vhd"

mkdir -p "$WRAPPER_MERGE_DIR"

# 1. Extract (op, bitwidth, delay) from JSON
extract_latencies() {
    local op="$1"
    python3 -c "
import json
with open('$JSON_FILE') as f:
    data = json.load(f)
latencies = data.get('handshake.${op}', {}).get('latency', {})
for bitwidth, periods in latencies.items():
    for period, latency in periods.items():
        print('${op},' + str(bitwidth) + ',' + str(period))
"
}

# 2. For each (op, bitwidth, delay), find matching frequency in CSV
find_csv_match() {
    local op="$1"
    local bitwidth="$2"
    local delay="$3"
    awk -F',' -v op="$op" -v bw="$bitwidth" -v dly="$delay" '
        NR>1 && $1==op && $2==bw && sprintf("%.6f",$13)==dly { print $3 }
    ' "$CSV_FILE"
}

# 3. For each match, find and copy the generated_units directory
copy_unit_dir() {
    local op="$1"
    local bitwidth="$2"
    local freq="$3"
    pattern="${op^}_${bitwidth}_${freq}_noIO"
    dir=$(find "$GEN_UNITS_DIR" -maxdepth 1 -type d -name "*${pattern}")
    if [ -n "$dir" ]; then
        cp -r "$dir" "$WRAPPER_MERGE_DIR/"
        echo "$dir"
    else
        echo ""
    fi
}

# 4. Append wrapper arch to operator VHDL and entity/arch to flopoco_ip_cores.vhd
append_arch_and_entity() {
 local op="$1"
 local bitwidth="$2"
 local delay="$3"
 local wrapper_dir="$4"
 local opfile="$OPS_DIR/${op}.vhd"
 local delay_underscore="${delay//./_}"
 local arch_name="arch_${bitwidth}_${delay_underscore}"
 # Determine the main operator VHDL entity name
main_entity=$(awk -F',' -v op="$op" '$1==op {print $3}' operator_mappings.csv)
if [ -z "$main_entity" ]; then
    echo "Unknown operator: $op"
    exit 1
fi
 # Append architecture to operator file (entity must bein the mappsing)
 awk -v arch="$arch_name" -v op="$op" -v main_entity="$main_entity" -v bw="$bitwidth" -v dly="$delay_underscore" '
  BEGIN{flag=0}
  /^architecture /{flag=1}
  flag{
    # Replace architecture name and entity name in arch header
    if ($0 ~ /^architecture[ \t]+arch[ \t]+of[ \t]+/) {
      sub(/^architecture[ \t]+arch[ \t]+of[ \t]+[A-Za-z0-9_]+/, "architecture " arch " of " op)
    }
    # Replace the main operator instantiation with suffixed version
    gsub("entity work\\." main_entity "\\(", "entity work." main_entity "_" bw "_" dly "(")
    # Enhanced FreqXXX pattern handling: insert _delay right after the number
    # This handles cases like Freq300, Freq300_uid4, Freq300*something, etc.
    gsub(/Freq[0-9]+/, "&_" dly)
    print
  }
  /end architecture;/{flag=0}
 ' "$wrapper_dir/wrapper.vhd" >> "$opfile"
}

append_operator_vhd_to_flopoco() {
    local op="$1"
    local bitwidth="$2"
    local delay="$3"
    local wrapper_dir="$4"
    local delay_underscore="${delay//./_}"

    # Determine the main operator VHDL entity name
main_entity=$(awk -F',' -v op="$op" '$1==op {print $3}' operator_mappings.csv)
if [ -z "$main_entity" ]; then
    echo "Unknown operator: $op"
    exit 1
fi

    local op_vhd="$wrapper_dir/operator.vhd"
    if [[ ! -f "$op_vhd" ]]; then
        echo "Warning: $op_vhd not found, skipping."
        return
    fi

    # Copy the full code, renaming both entity and architecture, and append _<delay> after FreqXXX
    awk -v main_entity="$main_entity" -v bw="$bitwidth" -v dly="$delay_underscore" '
        BEGIN { renamed_entity=0; new_entity_name=main_entity }
        /^entity[ \t]+/ {
            if ($2 == main_entity && !renamed_entity) {
                new_entity_name = main_entity "_" bw "_" dly
                print "entity " new_entity_name " is"
                renamed_entity=1
                next
            }
        }
        /^architecture[ \t]+/ {
            if ($4 == main_entity && renamed_entity) {
                print "architecture " $2 " of " new_entity_name " is"
                next
            }
        }
        {
            # Enhanced FreqXXX pattern handling: insert _delay right after the number
            # This handles cases like Freq300, Freq300_uid4, Freq300*something, etc.
            gsub(/Freq[0-9]+/, "&_" dly)
            print
        }
    ' "$op_vhd" >> "$FLOPOCO_VHD"

    echo "" >> "$FLOPOCO_VHD"
}

# Write entity header for each operator
write_entity_header() {
    local op="$1"
    local opfile="$OPS_DIR/${op}.vhd"
    cat <<EOF > "$opfile"
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity $op is
  generic (
    DATA_TYPE : integer;
    SELECTED_DELAY : integer
  );
  port (
    -- inputs
    clk          : in std_logic;
    rst          : in std_logic;
    lhs          : in std_logic_vector(DATA_TYPE - 1 downto 0);
    lhs_valid    : in std_logic;
    rhs          : in std_logic_vector(DATA_TYPE - 1 downto 0);
    rhs_valid    : in std_logic;
    result_ready : in std_logic;
    -- outputs
    result       : out std_logic_vector(DATA_TYPE - 1 downto 0);
    result_valid : out std_logic;
    lhs_ready    : out std_logic;
    rhs_ready    : out std_logic
  );
end entity;

EOF
}

# Main loop
: > "$FLOPOCO_VHD"
awk -F',' 'NR>1 {print $1}' operator_mappings.csv | while read -r op; do
    csv_op=$(awk -F',' -v op="$op" '$1==op {print $2}' operator_mappings.csv)
    if [ -z "$csv_op" ]; then
        echo "Unknown operator: $op"
        continue
    fi


    opfile="$OPS_DIR/${op}.vhd"
    write_entity_header "$op"

    while IFS=, read -r _ bitwidth delay; do
        freq=$(find_csv_match "$csv_op" "$bitwidth" "$delay")
        if [ -n "$freq" ]; then
            dir=$(copy_unit_dir "$csv_op" "$bitwidth" "$freq")
            if [ -n "$dir" ]; then
                append_arch_and_entity "$op" "$bitwidth" "$delay" "$dir"
                append_operator_vhd_to_flopoco "$op" "$bitwidth" "$delay" "$dir"
            fi
        fi
    done < <(extract_latencies "$op")
done

echo "Operator wrappers rebuilt and flopoco_ip_cores.vhd filled as specified."