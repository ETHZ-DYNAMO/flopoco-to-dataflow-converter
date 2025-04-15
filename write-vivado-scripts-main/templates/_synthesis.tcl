
read_xdc period.xdc

source include_float.tcl

synth_design -top TOP_DESIGN -part xc7k160tfbg484-1 -no_iobuf -mode out_of_context

opt_design
place_design
route_design
report_utilization -hierarchical > rpts/utilization_post_pr_hierarchical.rpt
report_utilization > rpts/utilization_post_pr.rpt
report_timing > rpts/timing_post_pr.rpt

# Uncomment the line below to save the design checkpoint to file
#write_checkpoint -force checkpoint_post_pr_TOP_DESIGN_CLOCK_REMARK.dcp

exit
