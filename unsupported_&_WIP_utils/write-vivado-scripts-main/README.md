# Write vivado scripts

This project provides utility scripts for writing vivado related TCL scripts and design constraint files.

## What is this project about?

The main.sh script writes vivado synthesis scripts for the hdl files in ./hdl directory where this script is called.

The main.sh script assumes that you are working with the following directory structure (a regular Dynamatic project):

```
.
├── hdl
├── reports
├── sim
└── src
```

## Using the main script

The script takes 2 arguments: `--top=TOP_ENTITY` specifies the name of the top-level hierarchy to compile, `--clock_period=CLOCK_PERIOD` specifies the clock period used in the design.

```sh
bash /path/to/project/main.sh --top=foo --clock_period=5
```

## Run vivado synthesis
After having generated the script files, run vivado using the following command (for example, on the eda2 server):

```sh
vivado-2019.1.1-bt vivado -mode batch -source synthesis.tcl | tee report.log
```





