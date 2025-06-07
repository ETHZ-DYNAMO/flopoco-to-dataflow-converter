import os
import sys
#List of global variables:

# Name of the configuration file
config_file_name = "float_config.json"

# Path to the FloPoCo executable 
#flopoco_executable_path = '/home/sevket/flopoco/build/flopoco'
#flopoco_executable_path = '/usr/local/bin/flopoco/'  

flopoco_executable_path = '/home/therandomheretek/Desktop/ETH_Masters/DYNAMO_Semester_Project/code_dynamtic/CompleteFlop2Dyn/Flop2Dyn-main/flopoco/build/flopoco'

def check_and_update_flopoco_path():
    global flopoco_executable_path
    while not (os.path.isfile(flopoco_executable_path) and os.access(flopoco_executable_path, os.X_OK)):
        print(f"FloPoCo executable not found. Path may not yet have been set, or an incorrect path may have been set. Current path is: {flopoco_executable_path}")
        new_path = input("Please enter the install path for FloPoCo on this system: ").strip()
        if not new_path:
            print("No path entered. Exiting.")
            sys.exit(1)
        flopoco_executable_path = '/home/therandomheretek/Desktop/ETH_Masters/DYNAMO_Semester_Project/code_dynamtic/CompleteFlop2Dyn/Flop2Dyn-main/flopoco/build/flopoco'
        # Overwrite this file with the new path
        update_setup_py_path(new_path)

def update_setup_py_path(new_path):
    setup_py = os.path.abspath(__file__)
    with open(setup_py, "r") as f:
        lines = f.readlines()
    with open(setup_py, "w") as f:
        for line in lines:
            if line.strip().startswith("flopoco_executable_path"):
                leading_ws = line[:line.find("flopoco_executable_path")]
                f.write(f"{leading_ws}flopoco_executable_path = '{new_path}'\n")
            else:
                f.write(line)

check_and_update_flopoco_path()

#flopoco_executable_path = '/home/therandomheretek/Desktop/ETH_Masters/DYNAMO_Semester_Project/code_dynamtic/CompleteFlop2Dyn/Flop2Dyn-main/flopoco/build/flopoco'

# Path to wrapper template
template_path = 'wrapper_template.vhd'

# Use the current working directory as the output directory for VHDL files
vhdl_output_dir = os.getcwd()

#Number of test vectors to be used during simulation
num_test_vectors = 10000

#Name of the output file for operators
out_file_name = 'combined.vhd'

#Name of the output file for wrappers
wrapper_file_name = 'wrapper.vhd'

# Info about all operators, in particular input and output size of flopoco operators

filepath_to_flopoco = "/Desktop/ETH_Masters/DYNAMO_Semester_Project/code_dynamtic/CompleteFlop2Dyn/Flop2Dyn-main/flopoco/doc/weboperators_5.0.git.html"  # just get from git, getting the version from the local - consider dockerising because it kinda solves everything

operators_info = {
    "FloatingPointAdder": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66
        },
        "flopoco_name": "FPAdd",
        "wrapper_name": "fadd_op",
        "wrapper_name64": "fadd_op64"
    },
    "FloatingPointComparator": {
        "input_size": "bitSize",
        "output_size": {
            32: 1,
            64: 1
        },          # Output size is 1 bit for a comparator
        "flopoco_name": "FPComp",
        "wrapper_name": ""
    },
    "FloatingPointMultiplier": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66
        },
        "flopoco_name": "FPMult",
        "wrapper_name": "fmul_op",
        "wrapper_name64": "fmul_op64"
    },
    "FloatingPointDivider": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66
        },
        "flopoco_name": "FPDiv",
        "wrapper_name": "fdiv_op",
        "wrapper_name64": "fdiv_op64"
    },
    "FloatingPointSubtractor": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66
        },
        "flopoco_name": "FPAdd",
        "wrapper_name": 'fsub_op',
        "wrapper_name64": "fsub_op64"
    },
    "FloatingPointPower": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66
        },
        "flopoco_name": "FPPow",
        "wrapper_name": "fpow_op",
        "wrapper_name64": "fpow_op64"
    },
    "FloatingPointSquareRoot": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66
        },
        "flopoco_name": "FPSqrt",
        "wrapper_name": "fsqrt_op",
        "wrapper_name64": "fsqrt_op64"
    },
    "FloatingPointExponential": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66
        },
        "flopoco_name": "FPExp",
        "wrapper_name": "fexp_op",
        "wrapper_name64": "fexp_op64"
    },
    "FloatingPointLogarithm": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66
        },
        "flopoco_name": "FPLog",
        "wrapper_name": "flog_op",
        "wrapper_name64": "flog_op64"
    }
}

# Wrapper templates for components
buffer_template = "buff: entity work.delay_buffer(arch) generic map({buffer_delay})\n        port map(clk,\n                rst,\n                join_valid,\n                oehb_ready,\n                buff_valid);"
join_template = "  join_inputs : entity work.join(arch) generic map(2) \n    port map( \n      -- inputs \n      ins_valid(0) => lhs_valid,\n      ins_valid(1) => rhs_valid,\n      outs_ready   => oehb_ready,\n      -- outputs \n      outs_valid   => join_valid, \n      ins_ready(0) => lhs_ready, \n      ins_ready(1) => rhs_ready\n    );"
oehb_template = "oehb: entity work.oehb_dataless(arch) generic map (1, 1, 1, 1)\n                port map (\n                --inputspValidArray\n                    clk => clk,\n                    rst => rst,\n                    pValidArray(0)  => buff_valid, -- real or speculatef condition (determined by merge1)\n                    nReadyArray(0) => nReadyArray(0),\n                    validArray(0) => validArray(0),\n                --outputs\n                    readyArray(0) => oehb_ready,\n                   lhs => oehb_datain,\n                    result => oehb_dataOut\n                );"
intermediate_input_template = "signal ip_lhs, ip_rhs : std_logic_vector({operator_width} downto 0);"
intermediate_output_template = "signal ip_result : std_logic_vector({operator_width} downto 0);"
nfloat2ieee_template = "nfloat2ieee : entity work.OutputIEEE_{bit}bit(arch)\n                port map (\n                    --input\n                    X => ip_result,\n                    --ouput\n                    R => result\n                );"
ieee2nfloat_0_template = "ieee2nfloat_0: entity work.InputIEEE_{bit}bit(arch)\n                port map (\n                    --input\n                    X =>lhs,\n                    --output\n                    R => ip_lhs\n                );"
ieee2nfloat_1_template = "ieee2nfloat_1: entity work.InputIEEE_{bit}bit(arch)\n                port map (\n                    --input\n                    X => {entity_connection},\n                    --output\n                    R => ip_rhs\n                );"

ieee2nfloat_0NoConversion_template = "-- No input conversion: direct assignment\n       ip_lhs <= lhs;"

ieee2nfloat_1NoConversion_template = "-- No input conversion: direct assignment\n       ip_rhs <= {entity_connection};"

nfloat2ieee_NoConversion_template = "-- No output conversion: direct assignment\n       result <= ip_result;"

main_component_template = """\
main_operator : entity work.{operator_name}
    port map (
        clk{ce} => clk{ce},
        X       => X,
        Y       => Y,
        R       => R
    );"""



# Following strings will be used in modifying the wrapper to construct the wrapper for the subtractor
sub_intermediate_signal = "--intermediate signal for bit flipping for subtraction \n    signal Y_flipped : std_logic_vector(31 downto 0); \n"
bit_flipper = "bitflipper: entity work.FlipMSB generic map (BIT_WIDTH => {bit_width}) \n                port map ( \n                    input_signal => rhs, \n                    output_signal => Y_flipped \n                );"

#
signal_join_valid = "signal join_valid : STD_LOGIC;"
input_rhs = "rhs          : in std_logic_vector({bitwidth}  downto 0);"
input_lhs = " lhs          : in std_logic_vector({bitwidth} downto 0);"
result_output = " result       : out std_logic_vector({bitwidth}  downto 0);"

# Defining a dictionary to make access to templates easier and more consistent
component_templates = {
    "buffer_template": buffer_template,
    "join_template": join_template,
    "oehb_template": oehb_template,
    "main_component_template": main_component_template,
    "intermediate_input_template": intermediate_input_template,
    "intermediate_output_template": intermediate_output_template,
    "nfloat2ieee_template": nfloat2ieee_template,
    "ieee2nfloat_0_template": ieee2nfloat_0_template,
    "ieee2nfloat_1_template": ieee2nfloat_1_template,
    "sub_intermediate_signal": sub_intermediate_signal,
    'bit_flipper': bit_flipper,
    "signal_join_valid": signal_join_valid,
    "ieee2nfloat_0NoConversion_template": ieee2nfloat_0NoConversion_template,
    "ieee2nfloat_1NoConversion_template": ieee2nfloat_1NoConversion_template,
    "nfloat2ieee_NoConversion_template": nfloat2ieee_NoConversion_template,
    "lhs_input": input_lhs,
    "rhs_input": input_rhs,
    "result_output" : result_output
    
}

# TODO: Flags of corresponding floating point comparators in FloPoCo
# note: it might make more sense to include this information in operators_info
comparison_flags = {

}
# please note that in order to be consistent with the generation of recent flopoco versions, we use different ce names for the various stages. However we drive them all with the same source, which lines up the actual usage with the Dynamatic end, which was designed for legacy 2022 FloPoCo. 
wrapper_template = """-----------------------------------------------------------------------
-- {operator_name}, version 0.0
-----------------------------------------------------------------------

Library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity {dynamatic_name} is
Generic (
 INPUTS: integer := 2; 
 OUTPUTS: integer := 1; 
 DATA_SIZE_IN: integer := 32; --we default to single precision
 DATA_SIZE_OUT: integer := 32
);
port (
    -- inputs
    clk          : in std_logic;
    rst          : in std_logic;
    {lhs_input}
    lhs_valid    : in std_logic;
    {rhs_input}
    rhs_valid    : in std_logic;
    result_ready : in std_logic;
    -- outputs
    {result_output}
    result_valid : out std_logic;
    lhs_ready    : out std_logic;
    rhs_ready    : out std_logic
  );
end entity;

architecture arch of {dynamatic_name} is
    
    
    -- legacy comment : main_component went here in component based version

    {signal_join_valid}

    signal buff_valid, oehb_valid, oehb_ready : STD_LOGIC;
    signal oehb_dataOut, oehb_datain : std_logic_vector(0 downto 0);

    --intermediate input signals for float conversion
    {intermediate_input}

    --intermidiate output signal(s) for float conversion
    {intermediate_output}

    {additional_signals}

    begin


        {join}

        {buffer}

        oehb: entity work.oehb_dataless(arch)
            port map(
            clk        => clk,
            rst        => rst,
            ins_valid  => buff_valid,
            outs_ready => result_ready,
            outs_valid => result_valid,
            ins_ready  => oehb_ready
            );

        {ieee2nfloat_0}

        {ieee2nfloat_1}

        {bit_flip_instance}

        {nfloat2ieee}

        operator : entity work.{operator_name}(arch)
        port map (
            clk   => clk,{clock_enable}
            X     => ip_lhs,
            Y     => ip_rhs,
            R     => ip_result
        );
end architecture;

"""

supported_operators_info =[
    {   
        "name": "FloatingPointAdder",
        "flopoco_name": "FPAdd",
        "exponent_size": 8,
        "mantissa_size": 23,
    },
    {
        "name": "FloatingPointMultiplier",
        "flopoco_name": "FPMult",
        "exponent_size": 8,
        "mantissa_size": 23,
    },
    {
        "name": "FloatingPointDivider",
        "flopoco_name": "FPDiv",
        "exponent_size": 8,
        "mantissa_size": 23,
    },
    {
        "name": "FloatingPointComparator",
        "flopoco_name": "FPComparator",
        "exponent_size": 8,
        "mantissa_size": 23,
    },
    {
        "name": "FloatingPointPower",
        "flopoco_name": "FPPow",
        "exponent_size": 8,
        "mantissa_size": 23,
    },
    {
        "name": "FloatingPointSquareRoot",
        "flopoco_name": "FPSqrt",
        "exponent_size": 8,
        "mantissa_size": 23,
    },
    {
        "name": "FloatingPointExponential",
        "flopoco_name": "FPExp",
        "exponent_size": 8,
        "mantissa_size": 23,
    },
    {
        "name": "FloatingPointLogarithm",
        "flopoco_name": "FPLog",
        "exponent_size": 8,
        "mantissa_size": 23,
    }
]