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
    
    # Skip header line, match op, bitwidth, and delay columns
    tail -n +2 "$CSV_FILE" | \
    awk -F',' -v op="$op" -v bw="$bitwidth" -v dly="$delay" \
        '$1==op && $2==bw && sprintf("%.6f",$13)==dly { print $3 }'
}

# 3. For each match, find and copy the generated_units directory
copy_unit_dir() {
    local op="$1"
    local bitwidth="$2"
    local freq="$3"
    local pattern="${op^}_${bitwidth}_${freq}_noIO"
    
    local dir=$(find "$GEN_UNITS_DIR" -maxdepth 1 -type d -name "*${pattern}")
    if [ -n "$dir" ]; then
        cp -r "$dir" "$WRAPPER_MERGE_DIR/"
        echo "$dir"
    else
        echo ""
    fi
}

# Helper: Get main entity name from operator mapping
get_main_entity() {
    local op="$1"
    local main_entity=$(awk -F',' -v op="$op" '$1==op {print $3}' operator_mappings.csv)
    if [ -z "$main_entity" ]; then
        echo "Unknown operator: $op" >&2
        exit 1
    fi
    echo "$main_entity"
}

# Helper: Extract architecture section from wrapper.vhd
extract_architecture_section() {
    local wrapper_file="$1"
    awk '/^architecture /{flag=1} flag{print} /end architecture;/{flag=0}' "$wrapper_file"
}

# Helper: Transform architecture header line
transform_architecture_header() {
    local arch_name="$1"
    local op="$2"
    sed "s/^architecture[ \t]\+arch[ \t]\+of[ \t]\+[A-Za-z0-9_]\+/architecture $arch_name of $op/"
}

# Helper: Transform entity work instantiations
transform_entity_instantiations() {
    local main_entity="$1"
    local bitwidth="$2"
    local delay_underscore="$3"
    sed "s/entity work\\.$main_entity(/entity work.${main_entity}_${bitwidth}_${delay_underscore}(/g"
}

# Helper: Transform FreqXXX patterns
transform_freq_patterns() {
    local delay_underscore="$1"
    sed "s/Freq\([0-9]\+\)/Freq\1_${delay_underscore}/g"
}

# 4. Append wrapper arch to operator VHDL
append_arch_and_entity() {
    local op="$1"
    local bitwidth="$2"
    local delay="$3"
    local wrapper_dir="$4"
    local opfile="$OPS_DIR/${op}.vhd"
    local delay_underscore="${delay//./_}"
    local arch_name="arch_${bitwidth}_${delay_underscore}"
    
    # Get main entity name
    local main_entity=$(get_main_entity "$op")
    
    # Process wrapper architecture with clear transformation pipeline
    extract_architecture_section "$wrapper_dir/wrapper.vhd" | \
    transform_architecture_header "$arch_name" "$op" | \
    transform_entity_instantiations "$main_entity" "$bitwidth" "$delay_underscore" | \
    transform_freq_patterns "$delay_underscore" \
    >> "$opfile"
}

# Helper: Extract and rename entity declaration
extract_and_rename_entity() {
    local op_vhd="$1"
    local main_entity="$2"
    local new_entity_name="$3"
    
    # Extract entity declaration and rename it
    awk -v main_entity="$main_entity" -v new_entity_name="$new_entity_name" '
        /^entity[ \t]+/ && $2 == main_entity {
            print "entity " new_entity_name " is"
            flag=1
            next
        }
        flag && /^end entity/ {
            print
            flag=0
            next
        }
        flag { print }
    ' "$op_vhd"
}

# Helper: Extract and rename architecture
extract_and_rename_architecture() {
    local op_vhd="$1"
    local main_entity="$2"
    local new_entity_name="$3"
    
    # Extract architecture and rename entity reference
    awk -v main_entity="$main_entity" -v new_entity_name="$new_entity_name" '
        /^architecture[ \t]+/ && $4 == main_entity {
            print "architecture " $2 " of " new_entity_name " is"
            flag=1
            next
        }
        flag && /^end architecture/ {
            print
            flag=0
            next
        }
        flag { print }
    ' "$op_vhd"
}

# Append operator VHDL to flopoco with renaming and frequency transformations
append_operator_vhd_to_flopoco() {
    local op="$1"
    local bitwidth="$2"
    local delay="$3"
    local wrapper_dir="$4"
    local delay_underscore="${delay//./_}"
    local op_vhd="$wrapper_dir/operator.vhd"
    
    if [[ ! -f "$op_vhd" ]]; then
        echo "Warning: $op_vhd not found, skipping."
        return
    fi
    
    # Get main entity name
    local main_entity=$(get_main_entity "$op")
    local new_entity_name="${main_entity}_${bitwidth}_${delay_underscore}"
    
    # Process entity declaration
    {
        extract_and_rename_entity "$op_vhd" "$main_entity" "$new_entity_name"
        echo ""
        extract_and_rename_architecture "$op_vhd" "$main_entity" "$new_entity_name"
    } | transform_freq_patterns "$delay_underscore" >> "$FLOPOCO_VHD"
    
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

# Helper: Get operators from mapping file
get_operators() {
    tail -n +2 operator_mappings.csv | cut -d',' -f1
}

# Helper: Get CSV operator name from mapping
get_csv_operator() {
    local op="$1"
    local csv_op=$(awk -F',' -v op="$op" '$1==op {print $2}' operator_mappings.csv)
    if [ -z "$csv_op" ]; then
        echo "Unknown operator: $op" >&2
        return 1
    fi
    echo "$csv_op"
}

# Main processing loop
main() {
    # Initialize flopoco output file
    : > "$FLOPOCO_VHD"
    
    # Process each operator
    get_operators | while read -r op; do
        local csv_op=$(get_csv_operator "$op")
        if [ $? -ne 0 ]; then
            continue
        fi
        
        local opfile="$OPS_DIR/${op}.vhd"
        write_entity_header "$op"
        
        # Process each latency configuration for this operator
        while IFS=, read -r _ bitwidth delay; do
            local freq=$(find_csv_match "$csv_op" "$bitwidth" "$delay")
            if [ -n "$freq" ]; then
                local dir=$(copy_unit_dir "$csv_op" "$bitwidth" "$freq")
                if [ -n "$dir" ]; then
                    append_arch_and_entity "$op" "$bitwidth" "$delay" "$dir"
                    append_operator_vhd_to_flopoco "$op" "$bitwidth" "$delay" "$dir"
                fi
            fi
        done < <(extract_latencies "$op")
    done
    
    echo "Operator wrappers rebuilt and flopoco_ip_cores.vhd filled as specified."
}

# Run main function
main