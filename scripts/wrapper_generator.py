

#TODO: take the edge cases into account, where pipeline-depth is 1 or 0
#TODO: implement wrappers for 64bit operators
def create_wrappers(operators, template, combined_file_path, operators_info, component_templates):
    # Create/overwrite wrapper VHDL file
    
    with open(combined_file_path, 'w') as combined_file:
        
        for operator in operators:
            print(operator)
            # Format the operator with appropriate parameters
            no_input_conversion = operator.get('noInputConversion', False)
            no_output_conversion = operator.get('noOutputConversion', False)
            print("no_input_conversion = ",no_input_conversion,  "no_output_conversion=" ,no_output_conversion   )
            ce_signal_1 = ""
            for i in range(operator['pipeline_depth']):
                ce_signal_1 = ce_signal_1 + f", ce_{i+1}"
            main_component = component_templates['main_component_template'].format(
                operator_name=operator['name'],
                ce=ce_signal_1,
                input_width=operator['bitSize'] + 2 - 1, # +2 because 2 extra bits in nFloat
                output_width=operators_info[operator['name']]["output_size"][operator['bitSize']] - 1
            )
            # Handle intermediate signals between conversion (between IEEE and nFloat) and operator
            intermediate_input = component_templates['intermediate_input_template'].format(operator_width=operator['bitSize'] + 2 - 1)
            intermediate_output = component_templates['intermediate_output_template'].format(
                operator_width=operators_info[operator['name']]["output_size"][operator['bitSize']] - 1)
            
                # Handle first IEEE to nFloat converter
            if no_input_conversion:
                print("no conversion requested on INPUTS")
                
                ieee2nfloat_0 = component_templates['ieee2nfloat_0NoConversion_template'].format(bit=operator["bitSize"])
                lhs_input = component_templates['lhs_input'].format(bitwidth=operator['bitSize'] + 2 - 1)

                if operator['name'] == "FloatingPointSubtractor":
                    additional_signals = component_templates['sub_intermediate_signal']
                    bit_flip_instance = component_templates['bit_flipper'].format(bit_width=operator['bitSize'])
                    ieee2nfloat_1 = component_templates['ieee2nfloat_1NoConversion_template'].format(bit=operator["bitSize"], entity_connection="Y_flipped")
                    rhs_input = component_templates['rhs_input'].format(bitwidth=operator['bitSize'] + 2 - 1)
                else:
                    additional_signals = ""
                    bit_flip_instance = ""
                    ieee2nfloat_1 = component_templates['ieee2nfloat_1NoConversion_template'].format(bit=operator["bitSize"], entity_connection="rhs")
                    rhs_input = component_templates['rhs_input'].format(bitwidth=operator['bitSize'] + 2 - 1)
            else:
                ieee2nfloat_0 = component_templates['ieee2nfloat_0_template'].format(bit=operator["bitSize"])
                lhs_input = component_templates['lhs_input'].format(bitwidth=operator['bitSize'] - 1)
                if operator['name'] == "FloatingPointSubtractor":
                    additional_signals = component_templates['sub_intermediate_signal']
                    bit_flip_instance = component_templates['bit_flipper'].format(bit_width=operator['bitSize'])
                    ieee2nfloat_1 = component_templates['ieee2nfloat_1_template'].format(bit=operator["bitSize"], entity_connection="Y_flipped")
                    rhs_input = component_templates['rhs_input'].format(bitwidth=operator['bitSize']  - 1)
                else:
                    additional_signals = ""
                    bit_flip_instance = ""
                    ieee2nfloat_1 = component_templates['ieee2nfloat_1_template'].format(bit=operator["bitSize"], entity_connection="rhs")
                    rhs_input = component_templates['rhs_input'].format(bitwidth=operator['bitSize']  - 1)


                # If the output is not a float (e.g FP comparator), do not instantiate converter from nFloat to IEEE
            if no_output_conversion or operators_info[operator['name']]["output_size"][operator['bitSize']] == 1:
                print("no conversion requested on OUTPUTS")
                nfloat2ieee = component_templates['nfloat2ieee_NoConversion_template'].format(bit=operator['bitSize'])
                result_output = component_templates['result_output'].format(bitwidth=operator['bitSize']+2  - 1)

            else:
                nfloat2ieee = component_templates['nfloat2ieee_template'].format(bit=operator['bitSize'])
                result_output = component_templates['result_output'].format(bitwidth=operator['bitSize'] - 1)

            # TODO: Prepare VHDL code based on pipeline_depth
            if operator['pipeline_depth'] == 0 or operator['pipeline_depth'] == 1:
                buffer = ""
                signal_join_valid = ""
                join = component_templates['join_template'].format(join_valid="buff_valid")
                print("Warning: Pipeline depth of " + str(operator['name']) + " is " + str(operator['pipeline_depth']))
            elif operator['pipeline_depth'] > 1:
                buffer = component_templates['buffer_template'].format(buffer_delay=operator['pipeline_depth'] - 1)
                signal_join_valid = component_templates['signal_join_valid']
                join = component_templates['join_template'].format(join_valid="join_valid")
            #elif operator['pipeline_depth'] == 1:
            #    buffer = ""
            else:
                print("Warning: Something went wrong. Pipeline depth: " + str(operator['pipeline_depth']) + " for operator " + str(operator['name']))

            ce_signal_2 = ""
            for i in range(operator['pipeline_depth']):
                ce_signal_2 = ce_signal_2 + f"\n            ce_{i+1} => oehb_ready,"
            
            

            # Replace placeholders in the template
            wrapper_vhdl = template.format(
                dynamatic_name=operators_info[operator['name']]['wrapper_name'],
                operator_name=operator['name'],
                #buffer_delay=operator['pipeline_depth'] - 1,
                operator_width=operator['bitSize'] + 2 - 1, # +2 because 2 extra bits in FloPoCo
                additional_signals=additional_signals,
                bit_flip_instance=bit_flip_instance,
                #entity_connection=entity_connection,
                join=join,
                buffer=buffer,
                main_component=main_component,
                intermediate_input=intermediate_input,
                intermediate_output=intermediate_output,
                ieee2nfloat_0 = ieee2nfloat_0,
                ieee2nfloat_1 = ieee2nfloat_1,
                nfloat2ieee = nfloat2ieee,
                signal_join_valid = signal_join_valid,
                clock_enable = ce_signal_2,
                rhs_input= rhs_input,
                lhs_input = lhs_input,
                result_output = result_output
                
            )

            # Write the formatted VHDL to the combined file
            combined_file.write(wrapper_vhdl)
            combined_file.write('\n\n')  # Add newlines for separation
