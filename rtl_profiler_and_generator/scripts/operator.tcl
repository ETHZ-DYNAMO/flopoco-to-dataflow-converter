# Improved operator.tcl - Clean and dependency-aware

# Get environment variables
set unit_name $env(UNIT_NAME)
set clock_period $env(CLOCK_PERIOD)
set unit_dir $env(UNIT_DIR)
set report_dir $env(REPORT_DIR)
set component_name $env(COMPONENT_NAME)

# Extract operator type from directory name
set dir_name [file tail $unit_dir]
if {[regexp {FloatingPoint([A-Za-z]+)_([0-9]+)_([0-9]+)_([A-Za-z]+)} $dir_name -> operator bitwidth frequency converters]} {
    puts "Synthesizing: $operator ${bitwidth}bit @ ${frequency}MHz ($converters converters)"
} else {
    puts "ERROR: Could not parse directory name format: $dir_name"
    exit 1
}

# Create report directories if they don't exist
file mkdir $report_dir/utilization
file mkdir $report_dir/timing

# Procedure to recursively find all .vhd files
proc find_vhd_files {dir} {
    set vhd_files {}
    set files [glob -nocomplain -directory $dir *]
    
    foreach file $files {
        if {[file isfile $file] && [string match "*.vhd" $file]} {
            lappend vhd_files $file
        } elseif {[file isdirectory $file]} {
            set sub_files [find_vhd_files $file]
            set vhd_files [concat $vhd_files $sub_files]
        }
    }
    return $vhd_files
}

# Procedure to get dependencies for a specific component from JSON config
proc get_component_dependencies {config_file component_name} {
    set required_deps {}
    
    if {![file exists $config_file]} {
        puts "WARNING: Config file not found: $config_file"
        return {}
    }
    
    # Read JSON file
    set fp [open $config_file r]
    set json_content [read $fp]
    close $fp
    
    # Find the specific component block
    set component_pattern "\\{\\s*\"name\"\\s*:\\s*\"$component_name\".*?\\}"
    if {[regexp $component_pattern $json_content component_block]} {
        # Extract dependencies array from this component
        if {[regexp {"dependencies"\s*:\s*\[\s*([^\]]*)\]} $component_block -> deps_str]} {
            # Parse dependency names
            set deps [regexp -all -inline {"([^"]+)"} $deps_str]
            foreach {full_match dep_name} $deps {
                lappend required_deps $dep_name
            }
        }
    }
    
    return $required_deps
}

# Load dependencies
puts "Loading dependencies..."
set dependency_dir "../dependencies"

if {[file exists $dependency_dir]} {
    # Get required dependencies from config using the specific component name
    if {[info exists env(DYNAMATIC_REPO)]} {
        set config_file "$env(DYNAMATIC_REPO)/data/rtl-config-vhdl-flopoco.json"
        if {[file exists $config_file]} {
            set required_deps [get_component_dependencies $config_file $component_name]
            
            # Always add logic.vhd as it's required
            lappend required_deps "logic"
            
            # Remove duplicates
            set unique_deps {}
            foreach dep $required_deps {
                if {[lsearch $unique_deps $dep] == -1} {
                    lappend unique_deps $dep
                }
            }
            set required_deps $unique_deps
            
            puts "Required dependencies: [join $required_deps {, }]"
            
            # Find and load only required dependency files
            set all_vhd_files [find_vhd_files $dependency_dir]
            set loaded_count 0
            
            foreach vhd_file $all_vhd_files {
                set filename [file tail $vhd_file]
                set basename [file rootname $filename]
                
                if {[lsearch $required_deps $basename] != -1} {
                    read_vhdl -vhdl2008 $vhd_file
                    incr loaded_count
                }
            }
            
            puts "Loaded $loaded_count dependency files"
        } else {
            puts "Config file not found, loading all dependencies"
            set dependency_files [find_vhd_files $dependency_dir]
            foreach dep_file $dependency_files {
                read_vhdl -vhdl2008 $dep_file
            }
        }
    } else {
        puts "DYNAMATIC_REPO not set, loading all dependencies"
        set dependency_files [find_vhd_files $dependency_dir]
        foreach dep_file $dependency_files {
            read_vhdl -vhdl2008 $dep_file
        }
    }
} else {
    puts "WARNING: Dependencies directory not found: $dependency_dir"
}

# Read unit VHDL files
set vhdl_files [list "$unit_dir/operator.vhd" "$unit_dir/wrapper.vhd"]
foreach vhdl_file $vhdl_files {
    read_vhdl -vhdl2008 $vhdl_file
}

# Synthesize the design
synth_design -top $unit_name -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context

# Create clock constraint and set properties
create_clock -name clk -period $clock_period [get_ports clk]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports clk]

# Run implementation
puts "Running implementation..."
opt_design
place_design
route_design

# Generate reports
set util_report_path "$report_dir/utilization/${unit_name}_${operator}_${frequency}MHz_${converters}.rpt"
set timing_report_path "$report_dir/timing/${unit_name}_${operator}_${frequency}MHz_${converters}.rpt"

report_utilization > $util_report_path
report_timing > $timing_report_path

# Get timing results
set wns [get_property SLACK [get_timing_paths -max_paths 1 -nworst 1 -setup]]

# Append timing info to report
set timing_file [open $timing_report_path "a"]
puts $timing_file "\nClock Frequency: ${frequency} MHz"
puts $timing_file "Clock Period: ${clock_period} ns"
puts $timing_file "Worst Negative Slack (WNS): ${wns} ns"
close $timing_file

puts "Implementation complete - WNS: ${wns} ns"
