# Presentation

## Use case
The present files are a small executable dedicated to systematically profiling the units and wrappers created by the "Flop2Dyn" project. This serves to evalute the timing metrics required for both accurate unit selection and buffer placement in the Dynamatic project. It also allows for the generation of units appropriate for usage inside Dynamatic.

**Operating systems** : FloPoCo's only well-supported OSes are Debian and it's derivatives (Ubuntu, etc.). However this section can use seperately generated units, placed into the ./generated_units directory, as long as the naming conventions of the generator are respected.

## Structure/Usage

### Profiling



The ./scripts directory contains all executables. **[profiler_executable.sh](scripts/profiler_executable.sh)** is the main script, which will for every file in the generated_units directory, run an appropriate vivado simulation, and store the results in ./results. It stores a path to the last known Dynamatic install; if it does not find a Dynamatic install, it will prompt the user to specify a new path. Dynamatic is used to obtain the dependency files required to simulate the operators. Note that Dynamatic is currently lacking dependencies to execute substractors, due to inconsistent handling (generated code uses a specific subfunction for inverted an input). The better solution will be to change the generator.

Said results are stored in two formats :a .csv summary of the core values, as well as the raw vivado timing and utilisation result outputs if detailed information is required.
FInally, **[result_graph_generator.py](python_graph_functions/result_graph_generator.py)** is a python script designed to read the result csv and generate a series of graphs of the "real" frequency (ie clock frequency corrected for slack) as a function of either the clock frequency or the used ressources. Upon being run, the user will be promted to choose between several options, allowing to either graph the stored FloPoCo or the Vivado data, or both together. 

All results will go into the ./reports folder, with subfolders for the graphs and the raw vivado reports.

NB : The profiler by default does not have a way to use black box vivado components. it may be necessary to obtain the vivado unit reports seperately, and fill out the appropriate result csv.

### Settings of the profiler executable

-The profiler executable allows the user to only profile part of the units added to the generated_units directory. The selection of units is done using the **[operator_mappings.csv](scripts/operator_mappings.csv)** file. THe reason for this format is that we cannot assume a consistent naming scheme (inconsistent op name abbreviation lengths, no guarantees of Dynamatic-FLoPoCo consistency) therefore keeping it user-exposed makes the  possible debugging tied to adding new units easier. Adding units by imitating the examples should work, and otherwise the case-by-case fixes are unliekly to be complex. I can make no guarantees that some other operators won't require extra dependencies, but since these can't be known a priori of the operator, it falls to the end user to add them; again simply proceeding consistently with the present examples of the dependency folder should work. 

-Another consideration relates to the presence or absence of converters between IEEE and FloPoCo simple FP format. For now, only units with both converters are considered, since identifying operators where they would not be needed in Dynamatic is not planned for the forseeable future. Simply replacing `wIO` in the unit profiler will allox another other subset of operators to be profiled. 

### Generating FloPoCo files

Once profiling is complete, simply run **[output_rtl_generator.sh](scripts/output_rtl_generator.sh)** from the scripts directory in order to generate, into the operators_&_wrappers_vhd directory, wrappers and ip cores ready for use in dynamatic. Likewise, run **[component_json_generator.sh](scripts/component_json_generator.sh)** to update component_json based off of the contents of the "base_component.json" provided : the updates will done directly on the file.


**Important note:** the wrappers are standalone, and can be used to replace the dynamatic wrapper files (addf.vhd, etc.) entirely. Likewise, the new component.json can also replace the extant one, with the caveat that this system only changes the delay/latency values, and does not interact with the rest. 
Therefore please replace base_component.json with an up-to-date version before proceeding. Finally, the flopoco_ip_cores.vhd is **not** standalone, and should instead be appended to a base version. This is beacause this exectuable has no way of knowing what other cores are used by cores outside of this floating point operator framework. It may be wise to eventually seperate out (in Dynamatic) a "base" file for ops outside of this framework, which would be left untouched, from a file that would be replaced wholesale by this one. 



