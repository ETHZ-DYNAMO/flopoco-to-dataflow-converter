# PyFloGen - VHDL Generation for FloPoCo and Dynamatic Integration

PyFloGen is a toolkit for generating VHDL code for floating-point operations, specifically tailored for integration with Dynamatic, an academic, open-source high-level synthesis compiler. This tool automates the process of creating VHDL modules via FloPoCo, making it easier to incorporate floating-point computations in Dynamatic's dynamically-scheduled circuits generated from C/C++ code.

## Features

- Automated VHDL code generation using FloPoCo.
- Custom wrapper generation for integration with Dynamatic.
- Support for a variety of floating-point operations including addition, subtraction, multiplication, and division.
- Command-line interface for adaptable and dynamic usage.
- Simulation and testbench generation for robust testing and validation.

## Getting Started

### Prerequisites

- Python 3.x
- FloPoCo (Floating Point Core Generator) installed.

### Overview of project

- float_gen.py includes the main function.
- float_config.json is an example configuration file.
- The directory lib contains additional VHDL code. The generated VHDL code will depend on this code.
- setup.py includes default parameters and variables.
- wrapper_template.vhd is the VHDL template with placeholders.

### Installation

1. Clone the PyFloGen repository:
   ```bash
   git clone https://github.com/sevkobat/PyFloGen.git

2. Navigate to the PyFloGen directory:
    ````bash
    cd PyFloGen

3. Check installation by running "float_gen.py". A correct install should return information about a default unit generation.



### Notes

- During code generation and simulation, the file name "flopoco.vhdl" and directory name "work" are used in the working directory. So make sure these file names are available.


## Usage

The project is meant to be used from the command line. Use     ```bash
    python3 float_gen.py -h
    ```
This will list all possible parameters and their descriptions. It also lists the available operators.

## Expanding/editing 

If the reader desires to make alterations, here is a quick rundown of parts most likely to be changed :

### Editing wrappers

The file '''setup.py''' file contains the wrapper templates. These are structures as a primary templates, which then makes use of components listed in component_templates and defined above. This is done for readability, but also modularity. The components can in turn be defined with parameters, to be specified with '''format''' inside  '''wrapper_generator.py''', as is done for bit width for instance. 
Notably, the actual injection of the component is done in '''wrapper_generator.py''', when wrapper_vhdl gets formatted. This notably allows logic-based block switching in Python : a sample usage of this feature is the opt-out usage of input & output conversions. 