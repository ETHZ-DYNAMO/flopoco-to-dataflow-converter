#!/usr/bin/env python3
import json
import csv
import shutil
from collections import defaultdict
from pathlib import Path

def copy_components_from_dynamatic():
    """Copy components.json from Dynamatic repo to local component_json directory"""
    # Prompt user for Dynamatic path
    dynamatic_path_str = input("Enter absolute path to Dynamatic repo: ").strip()
    dynamatic_path = Path(dynamatic_path_str)
    
    # Verify the path exists and has required structure
    components_file = dynamatic_path / "data" / "components.json"
    if not components_file.exists():
        print(f"ERROR: components.json not found at {components_file}")
        print("Please check that the Dynamatic path is correct")
        return False
    
    # Source and destination paths
    source_components = components_file
    dest_dir = Path('../component_json')
    dest_components = dest_dir / "base_component.json"
    
    try:
        # Create destination directory if it doesn't exist
        dest_dir.mkdir(parents=True, exist_ok=True)
        
        # Copy the file
        shutil.copy2(source_components, dest_components)
        print(f"SUCCESS: Copied components.json from {source_components}")
        print(f"         to {dest_components}")
        return True
        
    except FileNotFoundError as e:
        print(f"ERROR: Source file not found: {source_components}")
        print(f"       Make sure Dynamatic is properly installed at: {dynamatic_path}")
        return False
    except PermissionError as e:
        print(f"ERROR: Permission denied copying file: {e}")
        return False
    except Exception as e:
        print(f"ERROR: Failed to copy components file: {e}")
        return False

# Main execution starts here
print("=== Updating Component Latency Data ===")

# First, copy the latest components.json from Dynamatic
if not copy_components_from_dynamatic():
    print("Failed to copy components.json from Dynamatic. Exiting.")
    exit(1)

# Paths
component_json_path = Path('../component_json/base_component.json')
csv_path = Path('../reports/area_timing_summary.csv')
output_path = component_json_path  # overwrite in place

# Mapping from CSV Operator to JSON component key
operator_to_component = {}
try:
    with open('operator_mappings.csv') as f:
        reader = csv.DictReader(f)
        for row in reader:
            operator_to_component[row['csv_op']] = row['component']
except FileNotFoundError:
    print("ERROR: operator_mappings.csv not found")
    exit(1)

# Load JSON
try:
    with component_json_path.open('r') as f:
        components = json.load(f)
    print(f"SUCCESS: Loaded components data from {component_json_path}")
except FileNotFoundError:
    print(f"ERROR: Component JSON file not found: {component_json_path}")
    exit(1)
except json.JSONDecodeError as e:
    print(f"ERROR: Invalid JSON in components file: {e}")
    exit(1)

# Parse CSV and build latency data
latency_data = defaultdict(lambda: defaultdict(dict))  # {component: {bitwidth: {period: latency}}}

try:
    with csv_path.open('r') as f:
        reader = csv.DictReader(f)
        for row in reader:
            operator = row['Operator']
            if operator not in operator_to_component:
                continue
            
            component_key = operator_to_component[operator]
            bitwidth = row['Bitwidth']
            period = float(row['Operating_Clock_Period_ns'])
            latency = float(row['latency_cycles'])
            
            latency_data[component_key][bitwidth][period] = latency
    
    print(f"SUCCESS: Parsed latency data from {csv_path}")
    
except FileNotFoundError:
    print(f"ERROR: CSV file not found: {csv_path}")
    print("       Please run the synthesis script first to generate timing data")
    exit(1)
except Exception as e:
    print(f"ERROR: Failed to parse CSV data: {e}")
    exit(1)

# Pareto filter: keep only points not dominated by others (lower period and lower latency)
def pareto_filter(period_latency_dict):
    # Sort by period ascending, then latency ascending
    items = sorted(period_latency_dict.items())
    pareto = {}
    min_latency = float('inf')
    
    for period, latency in items:
        if latency < min_latency:
            pareto[period] = latency
            min_latency = latency
    
    return pareto

# Update JSON with new latency data, sorted and pareto-optimal only
components_updated = 0
for component_key, bitwidth_data in latency_data.items():
    # Add .flopoco suffix to target the FloPoCo variant specifically
    flopoco_component_key = f"{component_key}.flopoco"
    
    if flopoco_component_key not in components:
        print(f"WARNING: Component '{flopoco_component_key}' not found in JSON, skipping")
        continue
    
    components[flopoco_component_key]['latency'] = {}
    
    for bitwidth, period_data in bitwidth_data.items():
        pareto_period_data = pareto_filter(period_data)
        # Convert periods back to string for JSON keys, always 6 decimal places
        components[flopoco_component_key]['latency'][bitwidth] = {
            f"{period:.6f}": pareto_period_data[period] for period in sorted(pareto_period_data)
        }
    
    components_updated += 1

print(f"SUCCESS: Updated latency data for {components_updated} components")

# Custom JSON encoder for consistent float formatting
class SixDecimalEncoder(json.JSONEncoder):
    def encode(self, o):
        def float_format(obj):
            if isinstance(obj, float):
                return format(obj, ".6f")
            elif isinstance(obj, dict):
                return {k: float_format(v) for k, v in obj.items()}
            elif isinstance(obj, list):
                return [float_format(i) for i in obj]
            else:
                return obj
        
        return super().encode(float_format(o))

# Write updated JSON with 6 decimal places for floats
try:
    with output_path.open('w') as f:
        json.dump(components, f, indent=2, cls=SixDecimalEncoder)
    
    print(f"SUCCESS: Updated components file written to {output_path}")
    print("Latency data updated with Pareto-optimal points only, formatted to 6 decimal places.")

except Exception as e:
    print(f"ERROR: Failed to write updated JSON: {e}")
    exit(1)

print("=== Processing Complete ===")