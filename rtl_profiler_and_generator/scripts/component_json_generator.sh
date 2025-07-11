#!/usr/bin/env python3

import json
import csv
from collections import defaultdict
from pathlib import Path

# Paths
component_json_path = Path('../component_json/base_component.json')
csv_path = Path('../reports/area_timing_summary.csv')
output_path = component_json_path  # overwrite in place

# Mapping from CSV Operator to JSON component key : probably could be automated to handshake.ThreeFirstLettersf, but for now the granular control is more convenient


operator_to_component = {}
with open('operator_mappings.csv') as f:
    reader = csv.DictReader(f)
    for row in reader:
        operator_to_component[row['csv_op']] = row['component']


# Load JSON
with component_json_path.open('r') as f:
    components = json.load(f)

# Parse CSV and build latency data
latency_data = defaultdict(lambda: defaultdict(dict))  # {component: {bitwidth: {period: latency}}}

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
for component_key, bitwidth_data in latency_data.items():
    if component_key not in components:
        continue

    components[component_key]['latency'] = {}

    for bitwidth, period_data in bitwidth_data.items():
        pareto_period_data = pareto_filter(period_data)
        # Convert periods back to string for JSON keys, always 6 decimal places
        components[component_key]['latency'][bitwidth] = {
            f"{period:.6f}": pareto_period_data[period] for period in sorted(pareto_period_data)
        }

# Write updated JSON with 6 decimal places for floats
class SixDecimalEncoder(json.JSONEncoder):
    def iterencode(self, o, _one_shot=False):
        for s in super().iterencode(o, _one_shot=_one_shot):
            yield s

    def encode(self, o):
        def float_format(obj):
            if isinstance(obj, float):
                return format(obj, ".6f")
            elif isinstance(obj, dict):
                return {k: float_format(v) for k, v in obj.items()}
            elif isinstance(obj, list):
                return [float_format(i) for i in obj]
            else:
                return objey
with output_path.open('w') as f:
    json.dump(components, f, indent=2, cls=SixDecimalEncoder)

print("Latency data updated and Pareto-optimal points only, with 6 decimal places.")
