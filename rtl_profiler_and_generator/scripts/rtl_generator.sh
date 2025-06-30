#!/bin/bash

set -e

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --csv-file)
            CSV_FILE="$2"
            shift 2
            ;;
        --operator-mappings-file)
            OPERATOR_MAPPINGS_FILE="$2"
            shift 2
            ;;
        --component-json-path)
            JSON_FILE="$2"
            shift 2
            ;;
        --generated-units-dir)
            GEN_UNITS_DIR="$2"
            shift 2
            ;;
        --wrapper-merge-dir)
            WRAPPER_MERGE_DIR="$2"
            shift 2
            ;;
        --ops-dir)
            OPS_DIR="$2"
            shift 2
            ;;
        *)
            echo "Unknown argument: $1"
            exit 1
            ;;
    esac
done

# Validate required arguments
if [[ -z "$CSV_FILE" || -z "$OPERATOR_MAPPINGS_FILE" || -z "$JSON_FILE" || -z "$GEN_UNITS_DIR" || -z "$WRAPPER_MERGE_DIR" || -z "$OPS_DIR" ]]; then
    echo "ERROR: Missing required arguments"
    echo "Usage: $0 --csv-file <csv> --operator-mappings-file <mappings> --component-json-path <json> --generated-units-dir <gen_dir> --wrapper-merge-dir <merge_dir> --ops-dir <ops_dir>"
    exit 1
fi

echo "=== RTL Generator ==="
echo "CSV file: $CSV_FILE"
echo "Operator mappings: $OPERATOR_MAPPINGS_FILE"
echo "Component JSON: $JSON_FILE"
echo "Generated units dir: $GEN_UNITS_DIR"
echo "Wrapper merge dir: $WRAPPER_MERGE_DIR"
echo "Operators dir: $OPS_DIR"

FLOPOCO_VHD="$OPS_DIR/flopoco_ip_cores.vhd"

mkdir -p "$WRAPPER_MERGE_DIR"
mkdir -p "$OPS_DIR"

# 1. Extract (op, bitwidth, delay) from JSON using the passed arguments
extract_latencies() {
    local op="$1"
    python3 -c "
import json
import sys
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
    local csv_op="$1"
    local bitwidth="$2"
    local freq="$3"
    local conv_type="$4"  # Pass conversion type explicitly
    
    pattern="${csv_op}${bitwidth}${freq}_${conv_type}"
    dir=$(find "$GEN_UNITS_DIR" -maxdepth 1 -type d -name "*${pattern}")
    if [ -n "$dir" ]; then
        cp -r "$dir" "$WRAPPER_MERGE_DIR/"
        echo "$dir"
    else
        echo ""
    fi
}

# 4. Get operator mappings from CSV file
get_operator_mapping() {
    local lookup_key="$1"
    local return_field="$2"  # csv_op, main_entity, top_module, or component
    
    case $return_field in
        csv_op)
            field_num=2
            ;;
        main_entity)
            field_num=3
            ;;
        top_module)
            field_num=4
            ;;
        component)
            field_num=5
            ;;
        *)
            echo ""
            return
            ;;
    esac
    
    awk -F',' -v key="$lookup_key" -v field="$field_num" '
        $1==key { print $field; exit }
    ' "$OPERATOR_MAPPINGS_FILE"
}

# 5. Append wrapper arch to operator VHDL and entity/arch to flopoco_ip_cores.vhd
append_arch_and_entity() {
    local op="$1"
    local bitwidth="$2"
    local delay="$3"
    local wrapper_dir="$4"
    local opfile="$OPS_DIR/${op}.vhd"
    local delay_underscore="${delay//./_}"
    local arch_name="arch_${bitwidth}_${delay_underscore}"
    
    # Get the main operator VHDL entity name from mappings
    local main_entity=$(get_operator_mapping "$op" "main_entity")
    if [ -z "$main_entity" ]; then
        echo "ERROR: Unknown operator: $op"
        exit 1
    fi
    
    echo "  Appending architecture $arch_name for operator $op (entity: $main_entity)"
    
    # Append architecture to operator file
    awk -v arch="$arch_name" -v op="$op" -v main_entity="$main_entity" -v bw="$bitwidth" -v dly="$delay_underscore" '
        BEGIN{flag=0}
        /^architecture /{flag=1}
        flag{
            # Replace architecture name and entity name in arch header
            if ($0 ~ /^architecture[ \t]+arch[ \t]+of[ \t]+/) {
                sub(/^architecture[ \t]+arch[ \t]+of[ \t]+[A-Za-z0-9_]+/, "architecture " arch " of " op)
            }
            # Replace the main operator instantiation with suffixed version
            gsub("entity work\\." main_entity "\\(", "entity work." main_entity "" bw "" dly "(")
            # Enhanced FreqXXX pattern handling: insert _delay right after the number
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

    # Get the main operator VHDL entity name from mappings
    local main_entity=$(get_operator_mapping "$op" "main_entity")
    if [ -z "$main_entity" ]; then
        echo "ERROR: Unknown operator: $op"
        exit 1
    fi

    local op_vhd="$wrapper_dir/operator.vhd"
    if [[ ! -f "$op_vhd" ]]; then
        echo "Warning: $op_vhd not found, skipping."
        return
    fi

    echo "  Appending operator VHDL to flopoco_ip_cores.vhd"

    # Copy the full code, renaming both entity and architecture, and append _<delay> after FreqXXX
    awk -v main_entity="$main_entity" -v bw="$bitwidth" -v dly="$delay_underscore" '
        BEGIN { renamed_entity=0; new_entity_name=main_entity }
        /^entity[ \t]+/ {
            if ($2 == main_entity && !renamed_entity) {
                new_entity_name = main_entity "" bw "" dly
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
    
    echo "Creating entity header for operator: $op"
    
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

# Main processing loop
echo "Initializing flopoco_ip_cores.vhd"
: > "$FLOPOCO_VHD"

echo "Processing operators from mappings file..."

# Read all operators from the mappings file (skip header)
awk -F',' 'NR>1 {print $1}' "$OPERATOR_MAPPINGS_FILE" | while read -r op; do
    echo "Processing operator: $op"
    
    # Get CSV operator name from mappings
    csv_op=$(get_operator_mapping "$op" "csv_op")
    if [ -z "$csv_op" ]; then
        echo "ERROR: Unknown operator: $op"
        continue
    fi
    
    echo "  CSV operator: $csv_op"
    
    # Create operator VHDL file with entity header
    opfile="$OPS_DIR/${op}.vhd"
    write_entity_header "$op"
    
    # Extract latencies for this operator and process each one
    units_processed=0
    while IFS=, read -r extracted_op bitwidth delay; do
        echo "  Processing: bitwidth=$bitwidth, delay=$delay"
        
        # Find matching frequency in CSV
        freq=$(find_csv_match "$csv_op" "$bitwidth" "$delay")
        if [ -n "$freq" ]; then
            echo "    Found matching frequency: ${freq}MHz"
            
            # Try different conversion types until we find a match
            for conv_type in "noINOUT" "noOUT" "noIN" "wIO"; do
                dir=$(copy_unit_dir "$csv_op" "$bitwidth" "$freq" "$conv_type")
                if [ -n "$dir" ]; then
                    echo "    Found unit directory: $dir (conversion: $conv_type)"
                    append_arch_and_entity "$op" "$bitwidth" "$delay" "$dir"
                    append_operator_vhd_to_flopoco "$op" "$bitwidth" "$delay" "$dir"
                    units_processed=$((units_processed + 1))
                    break
                fi
            done
            
            if [ -z "$dir" ]; then
                echo "    WARNING: No unit directory found for any conversion type"
            fi
        else
            echo "    No matching frequency found in CSV"
        fi
    done < <(extract_latencies "$op")
    
    echo "  Completed operator $op: $units_processed units processed"
    echo "----------------------------------------"
done

echo "RTL generation complete!"
echo "Operator wrappers rebuilt and flopoco_ip_cores.vhd filled as specified."