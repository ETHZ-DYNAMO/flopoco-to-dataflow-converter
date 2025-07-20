import os
from bs4 import BeautifulSoup
import setup
# Path to the HTML file
flopoco_executable_path = setup.flopoco_executable_path


#html_file_path = "/home/therandomheretek/Desktop/ETH_Masters/DYNAMO_Semester_Project/code_dynamtic/CompleteFlop2Dyn/Flop2Dyn-main/flopoco/doc/web/operators_4.1.html"

import re

# Extract version components and convert to numeric tuple for comparison
def version_key(filename):
    version_str = filename.replace("operators_", "").replace(".html", "")
    # Extract numbers from the version string
    numbers = re.findall(r'\d+', version_str)
    if not numbers:
        return (0,)
    return tuple(int(num) for num in numbers)

html_file_path = os.path.join(os.path.dirname(os.path.dirname(flopoco_executable_path)), "doc", "web", 
                           max([f for f in os.listdir(os.path.join(os.path.dirname(os.path.dirname(flopoco_executable_path)), "doc", "web")) 
                               if f.startswith("operators_") and f.endswith(".html")], 
                               key=version_key))
try:
    with open(html_file_path, 'r', encoding='utf-8') as file:
        html_content = file.read()
except FileNotFoundError:
    print(f"Error: File not found at {html_file_path}")
    exit(1)
except Exception as e:
    print(f"Error reading file: {e}")
    exit(1)

# Parse the HTML content
soup = BeautifulSoup(html_content, 'html.parser')

# Find all operator names (they're in dt elements with class="operatorname")
operator_elements = soup.find_all('dt', class_='operatorname')
operator_names = [op.text.strip() for op in operator_elements]

# Create the dictionary with standard values
operators_info = {}

for name in operator_names:
    # Create a friendly name version
    friendly_name = "FloatingPoint" + name if name.startswith("FP") else name
    
    # Add to dictionary with standard values
    operators_info[friendly_name] = {
        "input_size": "bitSize",
        "output_size": {
            32: 34,  # logic for current setup- TODO since the values are always the same, streamline/remove this
            64: 66 
        },
        "flopoco_name": name,
        "wrapper_name": name.lower() + "_op",
        "wrapper_name64": name.lower() + "_op64"
    }

# Create the dictionary as a string with proper formatting
dict_str = "operators_info = {\n"
for op_name, op_info in operators_info.items():
    dict_str += f'    "{op_name}": {{\n'
    dict_str += f'        "input_size": "{op_info["input_size"]}",\n'
    dict_str += f'        "output_size": {{\n'
    for size, value in op_info["output_size"].items():
        dict_str += f'            {size}: {value},\n'
    dict_str += f'        }},\n'
    dict_str += f'        "flopoco_name": "{op_info["flopoco_name"]}",\n'
    dict_str += f'        "wrapper_name": "{op_info["wrapper_name"]}",\n'
    dict_str += f'        "wrapper_name64": "{op_info["wrapper_name64"]}"\n'
    dict_str += f'    }},\n'
dict_str += "}"

# Write the dictionary to a file
# Write the dictionary to the end of this script
script_path = os.path.abspath(__file__)

with open(script_path, 'a') as file:
    file.write("\n\n# Auto-generated dictionary\n")
    file.write(dict_str)
    print(f"Dictionary successfully appended to {script_path}")


# Auto-generated dictionary
operators_info = {
    "Shifter": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "Shifter",
        "wrapper_name": "shifter_op",
        "wrapper_name64": "shifter_op64"
    },
    "LZOC": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "LZOC",
        "wrapper_name": "lzoc_op",
        "wrapper_name64": "lzoc_op64"
    },
    "GenericMux": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "GenericMux",
        "wrapper_name": "genericmux_op",
        "wrapper_name64": "genericmux_op64"
    },
    "GenericLut": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "GenericLut",
        "wrapper_name": "genericlut_op",
        "wrapper_name64": "genericlut_op64"
    },
    "Normalizer": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "Normalizer",
        "wrapper_name": "normalizer_op",
        "wrapper_name64": "normalizer_op64"
    },
    "LZOC3": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "LZOC3",
        "wrapper_name": "lzoc3_op",
        "wrapper_name64": "lzoc3_op64"
    },
    "ShiftReg": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "ShiftReg",
        "wrapper_name": "shiftreg_op",
        "wrapper_name64": "shiftreg_op64"
    },
    "FixMultAdd": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixMultAdd",
        "wrapper_name": "fixmultadd_op",
        "wrapper_name64": "fixmultadd_op64"
    },
    "IntSquarerLUT": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntSquarerLUT",
        "wrapper_name": "intsquarerlut_op",
        "wrapper_name64": "intsquarerlut_op64"
    },
    "IntMultiAdder": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntMultiAdder",
        "wrapper_name": "intmultiadder_op",
        "wrapper_name64": "intmultiadder_op64"
    },
    "IntAddSub": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntAddSub",
        "wrapper_name": "intaddsub_op",
        "wrapper_name64": "intaddsub_op64"
    },
    "IntKaratsubaRectangular": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntKaratsubaRectangular",
        "wrapper_name": "intkaratsubarectangular_op",
        "wrapper_name64": "intkaratsubarectangular_op64"
    },
    "IntMultiplierLUT": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntMultiplierLUT",
        "wrapper_name": "intmultiplierlut_op",
        "wrapper_name64": "intmultiplierlut_op64"
    },
    "IntConstantComparator": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntConstantComparator",
        "wrapper_name": "intconstantcomparator_op",
        "wrapper_name64": "intconstantcomparator_op64"
    },
    "DSPBlock": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "DSPBlock",
        "wrapper_name": "dspblock_op",
        "wrapper_name64": "dspblock_op64"
    },
    "IntDualAddSub": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntDualAddSub",
        "wrapper_name": "intdualaddsub_op",
        "wrapper_name64": "intdualaddsub_op64"
    },
    "BitheapTest": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "BitheapTest",
        "wrapper_name": "bitheaptest_op",
        "wrapper_name64": "bitheaptest_op64"
    },
    "IntMultiplier": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntMultiplier",
        "wrapper_name": "intmultiplier_op",
        "wrapper_name64": "intmultiplier_op64"
    },
    "IntSquarer": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntSquarer",
        "wrapper_name": "intsquarer_op",
        "wrapper_name64": "intsquarer_op64"
    },
    "Compressor": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "Compressor",
        "wrapper_name": "compressor_op",
        "wrapper_name64": "compressor_op64"
    },
    "IntComparator": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntComparator",
        "wrapper_name": "intcomparator_op",
        "wrapper_name64": "intcomparator_op64"
    },
    "IntAdder": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntAdder",
        "wrapper_name": "intadder_op",
        "wrapper_name64": "intadder_op64"
    },
    "IEEEFPFMA": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IEEEFPFMA",
        "wrapper_name": "ieeefpfma_op",
        "wrapper_name64": "ieeefpfma_op64"
    },
    "IEEEFPAdd": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IEEEFPAdd",
        "wrapper_name": "ieeefpadd_op",
        "wrapper_name64": "ieeefpadd_op64"
    },
    "FloatingPointFPMult": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FPMult",
        "wrapper_name": "fpmult_op",
        "wrapper_name64": "fpmult_op64"
    },
    "FloatingPointFPSqrt": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FPSqrt",
        "wrapper_name": "fpsqrt_op",
        "wrapper_name64": "fpsqrt_op64"
    },
    "FloatingPointFPComparator": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FPComparator",
        "wrapper_name": "fpcomparator_op",
        "wrapper_name64": "fpcomparator_op64"
    },
    "FloatingPointFPDiv": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FPDiv",
        "wrapper_name": "fpdiv_op",
        "wrapper_name64": "fpdiv_op64"
    },
    "FloatingPointFPAdd": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FPAdd",
        "wrapper_name": "fpadd_op",
        "wrapper_name64": "fpadd_op64"
    },
    "PositExp": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "PositExp",
        "wrapper_name": "positexp_op",
        "wrapper_name64": "positexp_op64"
    },
    "PositAdd": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "PositAdd",
        "wrapper_name": "positadd_op",
        "wrapper_name64": "positadd_op64"
    },
    "PositFunctionByTable": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "PositFunctionByTable",
        "wrapper_name": "positfunctionbytable_op",
        "wrapper_name64": "positfunctionbytable_op64"
    },
    "IntConstMult": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntConstMult",
        "wrapper_name": "intconstmult_op",
        "wrapper_name64": "intconstmult_op64"
    },
    "FloatingPointFPConstMult": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FPConstMult",
        "wrapper_name": "fpconstmult_op",
        "wrapper_name64": "fpconstmult_op64"
    },
    "FixRealShiftAdd": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixRealShiftAdd",
        "wrapper_name": "fixrealshiftadd_op",
        "wrapper_name64": "fixrealshiftadd_op64"
    },
    "FloatingPointFPConstMultRational": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FPConstMultRational",
        "wrapper_name": "fpconstmultrational_op",
        "wrapper_name64": "fpconstmultrational_op64"
    },
    "FloatingPointFPConstDiv": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FPConstDiv",
        "wrapper_name": "fpconstdiv_op",
        "wrapper_name64": "fpconstdiv_op64"
    },
    "FixRealConstMult": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixRealConstMult",
        "wrapper_name": "fixrealconstmult_op",
        "wrapper_name64": "fixrealconstmult_op64"
    },
    "IntConstDiv": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntConstDiv",
        "wrapper_name": "intconstdiv_op",
        "wrapper_name64": "intconstdiv_op64"
    },
    "IntConstMultShiftAddOptTernary": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntConstMultShiftAddOptTernary",
        "wrapper_name": "intconstmultshiftaddoptternary_op",
        "wrapper_name64": "intconstmultshiftaddoptternary_op64"
    },
    "FixRealKCM": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixRealKCM",
        "wrapper_name": "fixrealkcm_op",
        "wrapper_name64": "fixrealkcm_op64"
    },
    "FixFixConstMult": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixFixConstMult",
        "wrapper_name": "fixfixconstmult_op",
        "wrapper_name64": "fixfixconstmult_op64"
    },
    "FixComplexKCM": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixComplexKCM",
        "wrapper_name": "fixcomplexkcm_op",
        "wrapper_name64": "fixcomplexkcm_op64"
    },
    "IntConstMultShiftAddOpt": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntConstMultShiftAddOpt",
        "wrapper_name": "intconstmultshiftaddopt_op",
        "wrapper_name64": "intconstmultshiftaddopt_op64"
    },
    "IntConstMultShiftAddRPAG": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntConstMultShiftAddRPAG",
        "wrapper_name": "intconstmultshiftaddrpag_op",
        "wrapper_name64": "intconstmultshiftaddrpag_op64"
    },
    "IntConstMultShiftAdd": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntConstMultShiftAdd",
        "wrapper_name": "intconstmultshiftadd_op",
        "wrapper_name64": "intconstmultshiftadd_op64"
    },
    "Fix2DNorm": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "Fix2DNorm",
        "wrapper_name": "fix2dnorm_op",
        "wrapper_name64": "fix2dnorm_op64"
    },
    "FixSinCos": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixSinCos",
        "wrapper_name": "fixsincos_op",
        "wrapper_name64": "fixsincos_op64"
    },
    "FixAtan2": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixAtan2",
        "wrapper_name": "fixatan2_op",
        "wrapper_name64": "fixatan2_op64"
    },
    "FixSinOrCos": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixSinOrCos",
        "wrapper_name": "fixsinorcos_op",
        "wrapper_name64": "fixsinorcos_op64"
    },
    "FloatingPointFPExp": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FPExp",
        "wrapper_name": "fpexp_op",
        "wrapper_name64": "fpexp_op64"
    },
    "FloatingPointFPLog": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FPLog",
        "wrapper_name": "fplog_op",
        "wrapper_name64": "fplog_op64"
    },
    "FloatingPointFPPow": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FPPow",
        "wrapper_name": "fppow_op",
        "wrapper_name64": "fppow_op64"
    },
    "IEEEFPExp": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IEEEFPExp",
        "wrapper_name": "ieeefpexp_op",
        "wrapper_name64": "ieeefpexp_op64"
    },
    "Exp": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "Exp",
        "wrapper_name": "exp_op",
        "wrapper_name64": "exp_op64"
    },
    "FixFunctionByMultipartiteTable": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixFunctionByMultipartiteTable",
        "wrapper_name": "fixfunctionbymultipartitetable_op",
        "wrapper_name64": "fixfunctionbymultipartitetable_op64"
    },
    "FixFunctionByTable": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixFunctionByTable",
        "wrapper_name": "fixfunctionbytable_op",
        "wrapper_name64": "fixfunctionbytable_op64"
    },
    "UniformPiecewisePolyApprox": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "UniformPiecewisePolyApprox",
        "wrapper_name": "uniformpiecewisepolyapprox_op",
        "wrapper_name64": "uniformpiecewisepolyapprox_op64"
    },
    "FixFunctionByPiecewisePoly": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixFunctionByPiecewisePoly",
        "wrapper_name": "fixfunctionbypiecewisepoly_op",
        "wrapper_name64": "fixfunctionbypiecewisepoly_op64"
    },
    "FixFunctionBySimplePoly": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixFunctionBySimplePoly",
        "wrapper_name": "fixfunctionbysimplepoly_op",
        "wrapper_name64": "fixfunctionbysimplepoly_op64"
    },
    "VaryingPiecewisePolyApprox": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "VaryingPiecewisePolyApprox",
        "wrapper_name": "varyingpiecewisepolyapprox_op",
        "wrapper_name64": "varyingpiecewisepolyapprox_op64"
    },
    "Posit2PIF": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "Posit2PIF",
        "wrapper_name": "posit2pif_op",
        "wrapper_name64": "posit2pif_op64"
    },
    "OutputIEEE": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "OutputIEEE",
        "wrapper_name": "outputieee_op",
        "wrapper_name64": "outputieee_op64"
    },
    "InputIEEE": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "InputIEEE",
        "wrapper_name": "inputieee_op",
        "wrapper_name64": "inputieee_op64"
    },
    "Fix2FP": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "Fix2FP",
        "wrapper_name": "fix2fp_op",
        "wrapper_name64": "fix2fp_op64"
    },
    "PIF2Posit": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "PIF2Posit",
        "wrapper_name": "pif2posit_op",
        "wrapper_name64": "pif2posit_op64"
    },
    "FloatingPointFP2Fix": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FP2Fix",
        "wrapper_name": "fp2fix_op",
        "wrapper_name64": "fp2fix_op64"
    },
    "PIF2Fix": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "PIF2Fix",
        "wrapper_name": "pif2fix_op",
        "wrapper_name64": "pif2fix_op64"
    },
    "Posit2Posit": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "Posit2Posit",
        "wrapper_name": "posit2posit_op",
        "wrapper_name64": "posit2posit_op64"
    },
    "Posit2FP": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "Posit2FP",
        "wrapper_name": "posit2fp_op",
        "wrapper_name64": "posit2fp_op64"
    },
    "FixRootRaisedCosine": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixRootRaisedCosine",
        "wrapper_name": "fixrootraisedcosine_op",
        "wrapper_name64": "fixrootraisedcosine_op64"
    },
    "FixHalfSine": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixHalfSine",
        "wrapper_name": "fixhalfsine_op",
        "wrapper_name64": "fixhalfsine_op64"
    },
    "FixFIR": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixFIR",
        "wrapper_name": "fixfir_op",
        "wrapper_name64": "fixfir_op64"
    },
    "IntFIRTransposed": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "IntFIRTransposed",
        "wrapper_name": "intfirtransposed_op",
        "wrapper_name64": "intfirtransposed_op64"
    },
    "FixSOPCfull": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixSOPCfull",
        "wrapper_name": "fixsopcfull_op",
        "wrapper_name64": "fixsopcfull_op64"
    },
    "FixIIR": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixIIR",
        "wrapper_name": "fixiir_op",
        "wrapper_name64": "fixiir_op64"
    },
    "FixIIRShiftAdd": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixIIRShiftAdd",
        "wrapper_name": "fixiirshiftadd_op",
        "wrapper_name64": "fixiirshiftadd_op64"
    },
    "FixSOPC": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "FixSOPC",
        "wrapper_name": "fixsopc_op",
        "wrapper_name64": "fixsopc_op64"
    },
    "SortWrapper": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "SortWrapper",
        "wrapper_name": "sortwrapper_op",
        "wrapper_name64": "sortwrapper_op64"
    },
    "SortingNetwork": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "SortingNetwork",
        "wrapper_name": "sortingnetwork_op",
        "wrapper_name64": "sortingnetwork_op64"
    },
    "TaoSort": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "TaoSort",
        "wrapper_name": "taosort_op",
        "wrapper_name64": "taosort_op64"
    },
    "TargetModel": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "TargetModel",
        "wrapper_name": "targetmodel_op",
        "wrapper_name64": "targetmodel_op64"
    },
    "TutorialOperator": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "TutorialOperator",
        "wrapper_name": "tutorialoperator_op",
        "wrapper_name64": "tutorialoperator_op64"
    },
    "DAGOperator": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "DAGOperator",
        "wrapper_name": "dagoperator_op",
        "wrapper_name64": "dagoperator_op64"
    },
    "SRTDivNbBitsMin": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "SRTDivNbBitsMin",
        "wrapper_name": "srtdivnbbitsmin_op",
        "wrapper_name64": "srtdivnbbitsmin_op64"
    },
    "RegisterSandwich": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "RegisterSandwich",
        "wrapper_name": "registersandwich_op",
        "wrapper_name64": "registersandwich_op64"
    },
    "TestBench": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "TestBench",
        "wrapper_name": "testbench_op",
        "wrapper_name64": "testbench_op64"
    },
    "AutoTest": {
        "input_size": "bitSize",
        "output_size": {
            32: 34,
            64: 66,
        },
        "flopoco_name": "AutoTest",
        "wrapper_name": "autotest_op",
        "wrapper_name64": "autotest_op64"
    },
}