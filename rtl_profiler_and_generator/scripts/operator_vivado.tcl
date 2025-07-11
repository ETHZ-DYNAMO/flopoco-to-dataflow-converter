# Vivado TCL script for profiling a single top-level Vivado IP-based unit
set unit_name $env(UNIT_NAME)
set clock_period $env(CLOCK_PERIOD)
set unit_dir $env(UNIT_DIR)
set report_dir $env(REPORT_DIR)

puts "Processing Vivado IP-based unit: $unit_name"
puts "Clock period: $clock_period ns"
puts "Unit directory: $unit_dir"

file mkdir $report_dir/utilization_vivado
file mkdir $report_dir/timing_vivado

# Function to recursively find all VHDL files
proc find_vhdl_files {dir} {
    set vhdl_files {}
    if {[file exists $dir]} {
        # Get all .vhd files in current directory
        set files [glob -nocomplain "$dir/*.vhd"]
        set vhdl_files [concat $vhdl_files $files]
        
        # Get all subdirectories and recursively search them
        set subdirs [glob -nocomplain -type d "$dir/*"]
        foreach subdir $subdirs {
            set subfiles [find_vhdl_files $subdir]
            set vhdl_files [concat $vhdl_files $subfiles]
        }
    }
    return $vhdl_files
}

# First, read dependency files from ../dependencies directory (including subdirs)
set dep_dir "[file dirname $unit_dir]/dependencies"
puts "Looking for dependencies in: $dep_dir"

if {[file exists $dep_dir]} {
    # Get all VHDL files recursively from dependencies
    set dep_files [find_vhdl_files $dep_dir]
    puts "Dependency files found: $dep_files"
    
    # Sort files to try to get a reasonable compilation order
    # Put certain fundamental files first
    set priority_files {}
    set other_files {}
    
    foreach dep_file $dep_files {
        set filename [file tail $dep_file]
        # Put certain files that are likely to be fundamental first
        if {[string match "*types*" $filename] || 
            [string match "*package*" $filename] ||
            [string match "*logic*" $filename] ||
            [string match "*join*" $filename]} {
            lappend priority_files $dep_file
        } else {
            lappend other_files $dep_file
        }
    }
    
    # Read priority files first, then others
    set sorted_dep_files [concat $priority_files $other_files]
    
    foreach dep_file $sorted_dep_files {
        puts "Reading dependency file: $dep_file"
        if {[catch {read_vhdl -vhdl2008 $dep_file} err]} {
            puts "Warning: Could not read $dep_file - $err"
        }
    }
    
    # List all design units in the work library for debugging
    puts "Design units currently in work library:"
    if {[catch {
        set units [get_designs -quiet]
        puts "Designs: $units"
    } err]} {
        puts "Could not list designs: $err"
    }
} else {
    puts "Warning: Dependencies directory not found: $dep_dir"
}

# Then read the main VHDL files in the unit_dir
set vhdl_files [glob -nocomplain "$unit_dir/*.vhd"]
puts "VHDL files to process: $vhdl_files"

foreach vhdl_file $vhdl_files {
    puts "Reading VHDL file: $vhdl_file"
    if {[catch {read_vhdl -vhdl2008 $vhdl_file} err]} {
        puts "Error reading $vhdl_file - $err"
        # Continue with other files instead of failing completely
    }
}

# Set the DATA_TYPE generic value (e.g., 32)
set data_type 32

# Synthesize the design with the selected unit as the top-level module
puts "Synthesizing design with top module: $unit_name and DATA_TYPE=$data_type"
synth_design -top $unit_name -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context -generic "DATA_TYPE=$data_type"

# Create the clock constraint
puts "Creating clock constraint with period: $clock_period ns"
create_clock -name clk -period $clock_period [get_ports clk]

# Run optimization, placement, and routing
puts "Running optimization..."
opt_design
puts "Running placement..."
place_design
puts "Running routing..."
route_design

# Generate reports
set util_report_path "$report_dir/utilization_vivado/${unit_name}_${unit_name}_200MHz_noIO.rpt"
set timing_report_path "$report_dir/timing_vivado/${unit_name}_${unit_name}_200MHz_noIO.rpt"

puts "Generating utilization report: $util_report_path"
report_utilization > $util_report_path

puts "Generating timing report: $timing_report_path"
report_timing > $timing_report_path

# Get WNS value from timing paths
set wns [get_property SLACK [get_timing_paths -max_paths 1 -nworst 1 -setup]]
puts "Worst Negative Slack (WNS): $wns ns"

# Append frequency information to the timing report
set timing_file [open $timing_report_path "a"]
puts $timing_file "\nClock Frequency: 200 MHz"
puts $timing_file "Clock Period: ${clock_period} ns"
puts $timing_file "Worst Negative Slack (WNS): ${wns} ns"
close $timing_file

puts "Implementation complete for $unit_name"