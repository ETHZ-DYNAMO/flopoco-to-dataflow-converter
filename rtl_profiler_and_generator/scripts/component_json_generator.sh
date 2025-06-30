#!/usr/bin/env python3
import json
import csv
import argparse
from collections import defaultdict
from pathlib import Path

def main():
    parser = argparse.ArgumentParser(description='Generate component JSON from CSV data')
    parser.add_argument('--csv-file', required=True, help='Path to area_timing_summary.csv')
    parser.add_argument('--operator-mappings-file', required=True, help='Path to operator_mappings.csv')
    parser.add_argument('--component-json-path', required=True, help='Path to base_component.json')
    
    args = parser.parse_args()
    
    # Convert to Path objects
    component_json_path = Path(args.component_json_path)
    csv_path = Path(args.csv_file)
    operator_mappings_path = Path(args.operator_mappings_file)
    
    print(f"Processing CSV: {csv_path}")
    print(f"Using operator mappings: {operator_mappings_path}")
    print(f"Updating component JSON: {component_json_path}")
    
    # Mapping from CSV Operator to JSON component key
    operator_to_component = {}
    with open(operator_mappings_path) as f:
        reader = csv.DictReader(f)
        for row in reader:
            operator_to_component[row['csv_op']] = row['component']
    
    print(f"Loaded {len(operator_to_component)} operator mappings")
    
    # Load JSON
    with component_json_path.open('r') as f:
        components = json.load(f)
    
    # Parse CSV and build latency data
    latency_data = defaultdict(lambda: defaultdict(dict))  # {component: {bitwidth: {period: latency}}}
    processed_rows = 0
    
    with csv_path.open('r') as f:
        reader = csv.DictReader(f)
        for row in reader:
            operator = row['Operator']
            if operator not in operator_to_component:
                print(f"Warning: Unknown operator {operator}, skipping")
                continue
            
            component_key = operator_to_component[operator]
            bitwidth = row['Bitwidth']
            period = float(row['Real_Required_Clock_Period_ns'])
            latency = float(row['max_latency'])
            
            latency_data[component_key][bitwidth][period] = latency
            processed_rows += 1
    
    print(f"Processed {processed_rows} CSV rows")
    
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
    total_points = 0
    pareto_points = 0
    
    for component_key, bitwidth_data in latency_data.items():
        if component_key not in components:
            print(f"Warning: Component {component_key} not found in JSON, skipping")
            continue
        
        components[component_key]['latency'] = {}
        for bitwidth, period_data in bitwidth_data.items():
            total_points += len(period_data)
            pareto_period_data = pareto_filter(period_data)
            pareto_points += len(pareto_period_data)
            
            # Convert periods back to string for JSON keys, always 6 decimal places
            components[component_key]['latency'][bitwidth] = {
                f"{period:.6f}": pareto_period_data[period] for period in sorted(pareto_period_data)
            }
    
    print(f"Filtered {total_points} total points to {pareto_points} Pareto-optimal points")
    
    # Write updated JSON with 6 decimal places for floats
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
    
    with component_json_path.open('w') as f:
        json.dump(components, f, indent=2, cls=SixDecimalEncoder)
    
    print("Latency data updated with Pareto-optimal points and 6 decimal places.")

if _name_ == '_main_':
    main()