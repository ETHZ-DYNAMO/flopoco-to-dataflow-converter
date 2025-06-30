# Updated operator.tcl - Works with new directory structure

# Get environment variables
set unit_name $env(UNIT_NAME)
set clock_period $env(CLOCK_PERIOD)
set unit_dir $env(UNIT_DIR)
set report_dir $env(REPORT_DIR)

# Extract operator type from directory name
set dir_name [file tail $unit_dir]
puts "Processing directory: $dir_name"

if {[regexp {FloatingPoint([A-Za-z]+)_([0-9]+)_([0-9]+)_([A-Za-z]+)} $dir_name -> operator bitwidth frequency converters]} {
    puts "Extracted info:"
    puts "  Operator: $operator"
    puts "  Bitwidth: $bitwidth"
    puts "  Frequency: ${frequency}MHz"
    puts "  Converters: $converters"
} else {
    puts "ERROR: Could not parse directory name format: $dir_name"
    exit 1
}

# Create report directories if they don't exist
file mkdir $report_dir/utilization
file mkdir $report_dir/timing

puts "Top module: $unit_name"
puts "Clock period: $clock_period ns"

# First, read all dependency files
puts "Reading dependency files from ./dependencies directory..."
set dependency_dir "../dependencies"
if {[file exists $dependency_dir]} {
    set dependency_files [glob -nocomplain "$dependency_dir/*.vhd"]
    if {[llength $dependency_files] > 0} {
        puts "Found [llength $dependency_files] dependency files"
        foreach dep_file $dependency_files {
            puts "Reading dependency file: $dep_file"
            read_vhdl -vhdl2008 $dep_file
        }
    } else {
        puts "WARNING: No dependency files found in $dependency_dir"
    }
} else {
    puts "WARNING: Dependencies directory not found: $dependency_dir"
}

# Then read the unit VHDL files
puts "Reading VHDL files from: $unit_dir"
set vhdl_files [list]
lappend vhdl_files "$unit_dir/operator.vhd"
lappend vhdl_files "$unit_dir/wrapper.vhd"
puts "VHDL files to process: $vhdl_files"

# Read VHDL files
foreach vhdl_file $vhdl_files {
    puts "Reading VHDL file: $vhdl_file"
    read_vhdl -vhdl2008 $vhdl_file
}

# Synthesize the design with the selected unit as the top-level module
puts "Synthesizing design with top module: $unit_name"
synth_design -top $unit_name -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context

# Create the clock constraint
puts "Creating clock constraint with period: $clock_period ns"
create_clock -name clk -period $clock_period [get_ports clk]

# Set the clock source
puts "Setting clock source properties"
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports clk]

# Run optimization, placement, and routing
puts "Running optimization..."
opt_design
puts "Running placement..."
place_design
puts "Running routing..."
route_design

# Generate reports
set util_report_path "$report_dir/utilization/${unit_name}_${operator}_${frequency}MHz_${converters}.rpt"
set timing_report_path "$report_dir/timing/${unit_name}_${operator}_${frequency}MHz_${converters}.rpt"

puts "Generating utilization report: $util_report_path"
report_utilization > $util_report_path
puts "Generating timing report: $timing_report_path"
report_timing > $timing_report_path

# Get WNS value from timing paths
set wns [get_property SLACK [get_timing_paths -max_paths 1 -nworst 1 -setup]]
puts "Worst Negative Slack (WNS): $wns ns"

# Append frequency information to the timing report
set timing_file [open $timing_report_path "a"]
puts $timing_file "\nClock Frequency: ${frequency} MHz"
puts $timing_file "Clock Period: ${clock_period} ns"
puts $timing_file "Worst Negative Slack (WNS): ${wns} ns"
close $timing_file

puts "Implementation complete for $unit_name ($operator ${frequency}MHz)"
