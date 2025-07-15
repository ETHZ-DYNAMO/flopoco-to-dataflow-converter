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
# Procedure to recursively find all .vhd files
proc find_vhd_files {dir} {
    set vhd_files {}
    
    # Get all files in current directory
    set files [glob -nocomplain -directory $dir *]
    
    foreach file $files {
        if {[file isfile $file] && [string match "*.vhd" $file]} {
            lappend vhd_files $file
        } elseif {[file isdirectory $file]} {
            # Recursively search subdirectories
            set sub_files [find_vhd_files $file]
            set vhd_files [concat $vhd_files $sub_files]
        }
    }
    
    return $vhd_files
}

# Procedure to extract required dependencies from JSON config
proc get_required_dependencies {config_file} {
    set required_deps {}
    
    if {![file exists $config_file]} {
        puts "WARNING: Config file not found: $config_file"
        return {}
    }
    
    # Read and parse JSON file
    set fp [open $config_file r]
    set json_content [read $fp]
    close $fp
    
    # Extract units ending with "f" and their dependencies
    # This is a simple regex-based approach for JSON parsing
    set units [regexp -all -inline {\{\s*"name"\s*:\s*"[^"]*f"\s*,.*?\}} $json_content]
    
    foreach unit $units {
        # Extract dependencies array from this unit
        if {[regexp {"dependencies"\s*:\s*\[\s*([^\]]*)\]} $unit -> deps_str]} {
            # Parse dependency names (remove quotes and whitespace)
            set deps [regexp -all -inline {"([^"]+)"} $deps_str]
            foreach {full_match dep_name} $deps {
                lappend required_deps $dep_name
            }
        }
    }
    
    # Remove duplicates
    set unique_deps {}
    foreach dep $required_deps {
        if {[lsearch $unique_deps $dep] == -1} {
            lappend unique_deps $dep
        }
    }
    
    return $unique_deps
}

# First, read all dependency files                                                                                                                                                      
puts "Reading dependency files from ./dependencies directory..."
set dependency_dir "../dependencies"

# Try to get DYNAMATIC_REPO from environment, with fallback
if {[info exists env(DYNAMATIC_REPO)]} {
    set config_file "$env(DYNAMATIC_REPO)/data/rtl-config-vhdl-flopoco.json"
    puts "Looking for config file at: $config_file"
} else {
    puts "WARNING: DYNAMATIC_REPO environment variable not set, skipping dependency filtering"
    set config_file ""
}

if {[file exists $dependency_dir]} {
    # Get required dependencies from config (if available)
    if {$config_file ne "" && [file exists $config_file]} {
        set required_deps [get_required_dependencies $config_file]
        puts "Required dependencies from config: $required_deps"
        
        # Recursively find all .vhd files
        set all_vhd_files [find_vhd_files $dependency_dir]
        
        # Filter files based on required dependencies
        set dependency_files {}
        foreach vhd_file $all_vhd_files {
            set filename [file tail $vhd_file]
            set basename [file rootname $filename]
            
            # Debug output
            puts "  Checking file: $filename (basename: $basename)"
            
            # Check if this file's basename is in required dependencies
            if {[lsearch $required_deps $basename] != -1} {
                puts "    -> INCLUDED (found in required deps)"
                lappend dependency_files $vhd_file
            } elseif {$basename eq "logic"} {
    puts "    -> INCLUDED (always required)"
		lappend dependency_files $vhd_file
	    } else {
                puts "    -> SKIPPED (not in required deps)"
            }
        }
        
        puts "Found [llength $dependency_files] required dependency files (out of [llength $all_vhd_files] total)"
    } else {
	puts "DYNAMATIC_REPO env var: '[info exists env(DYNAMATIC_REPO)]' value: '[expr {[info exists env(DYNAMATIC_REPO)] ? $env(DYNAMATIC_REPO) : "NOT_SET"}]'"
	puts "Config file path: '$config_file' (exists: [file exists $config_file])"
        puts "Config file not available, loading all VHDL files"
        # Fallback: load all VHDL files
        set dependency_files [find_vhd_files $dependency_dir]
        puts "Found [llength $dependency_files] dependency files"
    }
    
    if {[llength $dependency_files] > 0} {
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
