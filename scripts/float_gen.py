import json
import subprocess
import os
import re
import shutil
import argparse

import setup # This file contains variables
from file_manager import read_config
from file_manager import remove_simulation_files
from file_manager import combine_vhdl_files
from vhdl_generator import generate_vhdl
from wrapper_generator import create_wrappers

def main():
    # Create the parser
    supported_ops = sorted(setup.operators_info.keys())
    supported_ops_text = '\n  '.join(supported_ops)
    parser = argparse.ArgumentParser(    description='Generate floating point arithmetic units using FloPoCo.',
    epilog=f'''\
Supported Operators:
  {supported_ops_text}
Examples (sudo added since the editing and generation of files may require root privileges):
  sudo python3 float_gen.py --name FloatingPointAdder --bitSize 32 --targetFrequencyMHz 450 --noInputConversion 
  

Notes:
  - You can provide multiple operators by altering the config file (the default config file can be used as an example listing the arguments to be passed) and not passing arguments; by default this will combine the outputs of all the operators into a single file. 
''',
    formatter_class=argparse.RawTextHelpFormatter
)
    
    # Add optional arguments
    parser.add_argument('--vhdl_output_dir', help='Directory for VHDL output. Default is current working directory.', default=setup.vhdl_output_dir)
    parser.add_argument('--wrapper_file_name', help='Name of the wrapper file. Default is wrapper.vhd in current working directory.', default=setup.wrapper_file_name)
    parser.add_argument('--template_path', help='Path to the wrapper template file. Default is wrapper_template.vhd in current working directory.', default=setup.template_path)
    parser.add_argument('--out_file_name', help='Name of the output file. Default is combined.vhd', default=setup.out_file_name)
    parser.add_argument('--num_test_vectors', type=int, help='Number of test vectors. Default is 10000', default=setup.num_test_vectors)
    parser.add_argument('--config_file_name', help='Path to the configuration JSON file. Default is float_config.json in current working directory.', default=setup.config_file_name)
    parser.add_argument('--flopoco_path', help='Path to the FloPoCo executable.', default=setup.flopoco_executable_path)
    parser.add_argument('--keep_simulation_files', action='store_false', help='Prevents deletion of files created during simulation. No value required')
    parser.add_argument('--skip_simulation', action='store_false', help='Prevents simulation. No value required')
    
    parser.add_argument('--name', help='Operator name to generate (e.g., FloatingPointAdder)')
    parser.add_argument('--bitSize', type=int, help='Bit size of the operator (e.g., 32)')
    parser.add_argument('--targetFrequencyMHz', type=int, help='Target frequency in MHz (e.g., 800)')
    parser.add_argument('--noInputConversion', action='store_true', help='Disable input conversion logic in wrapper')
    parser.add_argument('--noOutputConversion', action='store_true', help='Disable output conversion logic in wrapper')


    # Parse the arguments
    args = parser.parse_args()
    
    # Import the config file
    if args.name and args.bitSize and args.targetFrequencyMHz:
        # Overwrite the config file with new data
        config_data = {
            "operators": [
                {
                    "name": args.name,
                    "bitSize": args.bitSize,
                    "targetFrequencyMHz": args.targetFrequencyMHz,
                    "noInputConversion": args.noInputConversion,
                    "noOutputConversion": args.noOutputConversion
                }
            ]
        }
        with open(args.config_file_name, 'w') as f:
            json.dump(config_data, f, indent=2)
        print(f"Config file {args.config_file_name} overwritten with user-supplied arguments.")
    else:
        print(f"No name/bitSize/targetFrequencyMHz provided, using existing config: {args.config_file_name}")

    # Load the config file (either overwritten or original)
    config = read_config(args.config_file_name)
    operators = config['operators']

    #This list will contain the path(s) to all generated vhdl files, later these files will be merged
    path_list = []

    #This dictionary will contain information about the generated operators that will be used in wrapper generation
    operators_info = []

    # Iterate over all operators in the config file and generate and simulate corresponding VHDL code.
    for operator in operators:
        # Generate code for the operator and save information about operator to vhdl_info
        vhdl_info = generate_vhdl(
            operator, args.num_test_vectors, 
            args.vhdl_output_dir, 
            args.flopoco_path, 
            args.keep_simulation_files,
            args.skip_simulation, 
            setup.operators_info)

        # Print information about pipeline-depth of generated operator
        if vhdl_info['pipeline_depth'] is not None:
            print(f"Pipeline depth: {vhdl_info['pipeline_depth']}")
            pipeline_depth = vhdl_info['pipeline_depth']
        else:
            print("Entity not pipelined or pipeline-depth regex is not working")
            pipeline_depth = 0


        # Store information regarding the generation of operators in the list 'operators_info'.
        # This information will be used while generating wrappers.
        operator_info = {
            'name': operator['name'],
            'bitSize': operator['bitSize'],
            'pipeline_depth': pipeline_depth,
            'noInputConversion': operator.get('noInputConversion', False),  
            'noOutputConversion': operator.get('noOutputConversion', False), 
        }
        operators_info.append(operator_info)

        # Add the path of the generated file to the list 'path_list'
        if 'vhdl_file_path' in vhdl_info:
            path_list.append(vhdl_info['vhdl_file_path'])
            print(f"Generated VHDL file moved to: {vhdl_info['vhdl_file_path']}")

    # Generate wrappers for the generated VHDL code.
    wrapper_path = os.path.join(args.vhdl_output_dir, args.wrapper_file_name)
    create_wrappers(operators_info, setup.wrapper_template, wrapper_path, setup.operators_info, setup.component_templates)

    # Combine all operators in a single VHDL file.
    combined_vhdl_file_path = os.path.join(args.vhdl_output_dir, args.out_file_name)
    combine_vhdl_files(path_list, combined_vhdl_file_path)

if __name__ == "__main__":
    main()