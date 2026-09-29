#16 is the max acceptable number of cores
set_host_options -max_cores 16

#set top design, in the following $top_design_freq will be replaced.
set top_design local_ctrl_row

#set top design with settings
set top_design_freq local_ctrl_row

#define the design library path
define_design_lib work -path ./work/${top_design_freq}

#set rtl file location relative path is also allowed. (this must include all instantiates in the top block) Also the following $rtl will be replaced by this path list.
set rtl [ list \
./../verilog/rtl/local_ctrl_row.v \
]

#analyze the specified verilog source files and stores the design templates they define into the specified library.
redirect -tee -file rpt/${top_design_freq}/analyze.rpt {analyze -format sverilog $rtl}

#build a design from the intermediate format of verilog module.
redirect -tee -file rpt/${top_design_freq}/elaborate.rpt {elaborate -architecture verilog $top_design}

#write ddc first to check design, if necessary
write -format ddc -hierarchy -output ./ddc/${top_design_freq}.ddc

# #removes the multiply instantiated hierarchy in the current design by creating a unique design for each cell instance.
uniquify -force

#sets the current design
current_design $top_design
redirect -tee -file rpt/${top_design_freq}/0_link.rpt {link}
redirect -tee -file rpt/${top_design_freq}/1_check_design.rpt {check_design}

#do "dcprocheck" prior to source the below constraint file
redirect -tee -file rpt/${top_design_freq}/2_source.rpt {source -echo -verbose cons/${top_design_freq}_cons.tcl}
redirect -tee -file rpt/${top_design_freq}/3_check_timing.rpt {check_timing}
redirect -tee -file rpt/${top_design_freq}/4_report_port.rpt {report_port -verbose}

#set_boundary_optimization $top_design_freq false
redirect -tee -file rpt/${top_design_freq}/5_compile.rpt {compile_ultra -no_autoungroup}
redirect -tee -file rpt/${top_design_freq}/6_report_constraint.rpt {report_constraint -all_violators}
redirect -tee -file rpt/${top_design_freq}/7_report_timing_setup.rpt {report_timing}
redirect -tee -file rpt/${top_design_freq}/7_report_timing_hold.rpt {report_timing -delay_type min}
redirect -tee -file rpt/${top_design_freq}/8_report_path_group.rpt {report_path_group}
redirect -tee -file rpt/${top_design_freq}/9_report_area.rpt {report_area}
redirect -tee -file rpt/${top_design_freq}/10_report_clock.rpt {report_clock -skew -attr}; #This is for dc_shell-topo

#Essential reports
report_area -hierarchy                                  > ./rpt/${top_design_freq}/${top_design_freq}.area
report_timing                                           > ./rpt/${top_design_freq}/${top_design_freq}.timing
report_power -hier                                      > ./rpt/${top_design_freq}/${top_design_freq}.power
report_constraint -all_violators                        > ./rpt/${top_design_freq}/${top_design_freq}.vio

# "tri" to "wire"
set verilogout_no_tri true

# bus[10] to bus_10_
define_name_rules lower_case_nets -allowed "a-z0-9_()[]" -type net
change_names -rules lower_case_nets -h
change_names -rules verilog -h

write -format verilog -hierarchy -output ./output/${top_design_freq}/${top_design_freq}_gate.v

write -format ddc -hierarchy -output ./ddc/${top_design_freq}.ddc

write_sdc ./output/${top_design_freq}/${top_design_freq}.sdc
write_sdf ./output/${top_design_freq}/${top_design_freq}_gate.sdf_DC
set_svf ./output/${top_design_freq}/${top_design_freq}.svf

remove_design -designs

exit
