#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Apr 28 19:42:27 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v19.12-s087_1 (64bit) 11/11/2019 17:32 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 19.12-s087_1 NR191024-1807/19_12-UB (database version 18.20, 485.7.1) {superthreading v1.51}
#@(#)CDS: AAE 19.12-s033 (64bit) 11/11/2019 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 19.12-s033_1 () Oct 24 2019 14:09:28 ( )
#@(#)CDS: SYNTECH 19.12-s008_1 () Oct  6 2019 23:25:36 ( )
#@(#)CDS: CPE v19.12-s079
#@(#)CDS: IQuantus/TQuantus 19.1.3-s095 (64bit) Fri Aug 30 18:16:09 PDT 2019 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
setMultiCpuUsage -localCpu 48
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set eco_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set enc_enable_print_mode_command_reset_options 1
set init_gnd_net VSS
set init_lef_file {  /home/yingna/project/tsmcN40_1p9m/stdcell/TSMCHOME/digital/Back_End/lef/tcbn40lpbwp_120c/lef/VHV_0d5_0/tcbn40lpbwp_9lm6X2ZRDL.lef  }
set init_mmmc_file enc_scripts/global_ctrl/global_ctrl_mmmc.view
set init_pwr_net H_VDD
set init_verilog ../syn/output/global_ctrl/global_ctrl_gate.v
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
set report_inactive_arcs_format {from to when arc_type sense reason}
set soft_stack_size_limit 515
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
init_design
floorPlan -site core -s 296 4 2 2 2 2 -noSnapToGrid
setDesignMode -process 40
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side left -layer 4 -spreadType start -spacing 0.5 -start 0.1 1.0 -pin {clk rstn p_en en_g wr_data_in_g  rd_vld_g rd_data_out_g p_out_vld_g p_out_g}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side bottom -layer 4 -spreadType start -spacing 1.1 -start 0.1 0 -pin {couple_en wr_data_in_g_d2}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side bottom -layer 4 -spreadType start -spacing 1.1 -start 25.55 0 -pin {{wr_vld_bus[0]} {rd_rdy_bus[0]} {rd_vld_bus[0]} {rd_data_out_bus[0]} {p_code_vld_bus[0]} {p_out_vld_bus[0]} {p_out_bus[0]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side bottom -layer 4 -spreadType start -spacing 1.1 -start 62.8 0 -pin {{wr_vld_bus[1]} {rd_rdy_bus[1]} {rd_vld_bus[1]} {rd_data_out_bus[1]} {p_code_vld_bus[1]} {p_out_vld_bus[1]} {p_out_bus[1]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side bottom -layer 4 -spreadType start -spacing 1.1 -start 100.05 0 -pin {{wr_vld_bus[2]} {rd_rdy_bus[2]} {rd_vld_bus[2]} {rd_data_out_bus[2]} {p_code_vld_bus[2]} {p_out_vld_bus[2]} {p_out_bus[2]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side bottom -layer 4 -spreadType start -spacing 1.1 -start 137.3 0 -pin {{wr_vld_bus[3]} {rd_rdy_bus[3]} {rd_vld_bus[3]} {rd_data_out_bus[3]} {p_code_vld_bus[3]} {p_out_vld_bus[3]} {p_out_bus[3]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side bottom -layer 4 -spreadType start -spacing 1.1 -start 174.55 0 -pin {{wr_vld_bus[4]} {rd_rdy_bus[4]} {rd_vld_bus[4]} {rd_data_out_bus[4]} {p_code_vld_bus[4]} {p_out_vld_bus[4]} {p_out_bus[4]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side bottom -layer 4 -spreadType start -spacing 1.1 -start 211.8 0 -pin {{wr_vld_bus[5]} {rd_rdy_bus[5]} {rd_vld_bus[5]} {rd_data_out_bus[5]} {p_code_vld_bus[5]} {p_out_vld_bus[5]} {p_out_bus[5]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side bottom -layer 4 -spreadType start -spacing 1.1 -start 249.05 0 -pin {{wr_vld_bus[6]} {rd_rdy_bus[6]} {rd_vld_bus[6]} {rd_data_out_bus[6]} {p_code_vld_bus[6]} {p_out_vld_bus[6]} {p_out_bus[6]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side bottom -layer 4 -spreadType start -spacing 1.1 -start 286.3 0 -pin {{wr_vld_bus[7]} {rd_rdy_bus[7]} {rd_vld_bus[7]} {rd_data_out_bus[7]} {p_code_vld_bus[7]} {p_out_vld_bus[7]} {p_out_bus[7]}}
setPinAssignMode -pinEditInBatch false
clearGlobalNets
globalNetConnect H_VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer AP -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {H_VDD VSS} -type core_rings -follow core -layer {top M4 bottom M4 left M3 right M3} -width {top 0.4 bottom 0.4 left 0.4 right 0.4} -spacing {top 0.4 bottom 0.4 left 0.4 right 0.4} -offset {top 0 bottom 0 left 0 right 0} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
verifyConnectivity -error 10000
addWellTap -cell TAPCELLBWP -cellInterval 40 -prefix WELLTAP
verifyWellTap -rule 40
deselectAll
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { corePin } -layerChangeRange { M1(1) M4(4) } -blockPinTarget { nearestTarget } -corePinTarget { blockring ring } -allowJogging 1 -crossoverViaLayerRange { M1(1) M4(4) } -nets { H_VDD VSS } -allowLayerChange 1 -targetViaLayerRange { M1(1) M4(4) }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer AP -stacked_via_bottom_layer M2 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {H_VDD VSS} -layer M3 -direction vertical -width .17 -spacing 3 -set_to_set_distance 100 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit AP -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit AP -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
set_global timing_set_clock_source_to_output_as_data true
setPlaceMode -place_global_cong_effort high
setPlaceMode -place_global_max_density 0.7
place_opt_design
addTieHiLo -cell {TIEHBWP TIELBWP}
checkPlace
setOptMode -fixFanoutLoad true
optDesign -preCTS -drv
timeDesign -preCTS
timeDesign -preCTS -hold
setNanoRouteMode -routeWithTimingDriven false
setNanoRouteMode -droutePostRouteSwapVia none
setNanoRouteMode -drouteUseMultiCutViaEffort low
setNanoRouteMode -routeReserveSpaceForMultiCut false
setNanoRouteMode -routeWithViaOnlyForStandardCellPin true
setNanoRouteMode -routeWithViaInPin false
setNanoRouteMode -drouteOnGridOnly none
create_route_type -name rule_leaf -top_preferred_layer M4 -bottom_preferred_layer M3
create_route_type -name rule_trunk -top_preferred_layer M4 -bottom_preferred_layer M3
create_route_type -name rule_top -top_preferred_layer M4 -bottom_preferred_layer M3
set_ccopt_property -net_type leaf route_type rule_leaf
set_ccopt_property -net_type trunk route_type rule_trunk
set_ccopt_property -net_type top route_type rule_top
set_ccopt_property target_max_trans auto
set_ccopt_property target_skew 100ps
set_ccopt_property -cts_buffer_cells {BUFFD0BWP BUFFD1BWP BUFFD2BWP BUFFD3BWP BUFFD4BWP BUFFD6BWP BUFFD8BWP BUFFD12BWP BUFFD16BWP BUFFD20BWP BUFFD24BWP}
set_ccopt_property -cts_use_inverters false
create_ccopt_clock_tree_spec -filename ./ccopt/global_ctrl/ccopt.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
create_ccopt_clock_tree -name clk -source clk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner fast_delay -early -clock_tree clk 0.150
set_ccopt_property target_max_trans_sdc -delay_corner fast_delay -late -clock_tree clk 0.400
set_ccopt_property target_max_trans_sdc -delay_corner typ_delay -early -clock_tree clk 0.150
set_ccopt_property target_max_trans_sdc -delay_corner typ_delay -late -clock_tree clk 0.400
set_ccopt_property target_max_trans_sdc -delay_corner slow_delay -early -clock_tree clk 0.150
set_ccopt_property target_max_trans_sdc -delay_corner slow_delay -late -clock_tree clk 0.400
set_ccopt_property source_output_max_trans -delay_corner fast_delay -early -clock_tree clk 0.150
set_ccopt_property source_output_max_trans -delay_corner fast_delay -early -clock_tree clk 0.150
set_ccopt_property source_output_max_trans -delay_corner typ_delay -early -clock_tree clk 0.150
set_ccopt_property source_output_max_trans -delay_corner typ_delay -early -clock_tree clk 0.150
set_ccopt_property source_output_max_trans -delay_corner slow_delay -early -clock_tree clk 0.150
set_ccopt_property source_output_max_trans -delay_corner slow_delay -early -clock_tree clk 0.150
set_ccopt_property source_output_max_trans -delay_corner fast_delay -late -clock_tree clk 0.200
set_ccopt_property source_output_max_trans -delay_corner fast_delay -late -clock_tree clk 0.200
set_ccopt_property source_output_max_trans -delay_corner typ_delay -late -clock_tree clk 0.200
set_ccopt_property source_output_max_trans -delay_corner typ_delay -late -clock_tree clk 0.200
set_ccopt_property source_output_max_trans -delay_corner slow_delay -late -clock_tree clk 0.200
set_ccopt_property source_output_max_trans -delay_corner slow_delay -late -clock_tree clk 0.200
set_ccopt_property clock_period -pin clk 9.5
create_ccopt_skew_group -name clk/cons_mode -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group clk/cons_mode true
set_ccopt_property extracted_from_clock_name -skew_group clk/cons_mode clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk/cons_mode cons_mode
set_ccopt_property extracted_from_delay_corners -skew_group clk/cons_mode {fast_delay fast_delay typ_delay typ_delay slow_delay slow_delay}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ccopt_design -cts
deleteTrialRoute
report_ccopt_clock_trees -filename ./ccopt/global_ctrl/ccopt_report_trees.rpt
optDesign -postCTS
setOptMode -fixFanoutLoad true
optDesign -postCTS -drv
optDesign -postCTS -hold
timeDesign -postCTS
timeDesign -postCTS -hold
setNanoRouteMode -routeTopRoutingLayer 4
setNanoRouteMode -routeBottomRoutingLayer 2
setNanoRouteMode -routeWithTimingDriven false
setNanoRouteMode -droutePostRouteSwapVia none
setNanoRouteMode -drouteUseMultiCutViaEffort medium
setNanoRouteMode -routeReserveSpaceForMultiCut false
setNanoRouteMode -routeWithViaOnlyForStandardCellPin true
setNanoRouteMode -routeWithViaInPin true
setNanoRouteMode -routeConcurrentMinimizeViaCountEffort low
setNanoRouteMode -drouteStartIteration default
setNanoRouteMode -drouteEndIteration default
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -drouteOnGridOnly none
globalDetailRoute
ccopt_pro
setAnalysisMode -analysisType onChipVariation -cppr both
set_analysis_view -setup {fast_analysis typ_analysis slow_analysis} -hold {fast_analysis typ_analysis slow_analysis}
optDesign -postRoute
setOptMode -fixFanoutLoad true
optDesign -postRoute -drv
optDesign -postRoute -hold
timeDesign -postRoute
timeDesign -postRoute -hold
fit
getIoFlowFlag
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
fit
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -routeAntennaCellName ANTENNABWP
setNanoRouteMode -routeInsertAntennaDiode true
globalDetailRoute
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
timeDesign -postRoute
timeDesign -postRoute -hold
addFiller -cell {DCAP64BWP DCAPX64BWP DCAP32BWP DCAPX32BWP DCAP16BWP DCAPX16BWP DCAP8BWP DCAPX8BWP DCAP4BWP DCAPX4BWP DCAPBWP} -prefix filler_decap
addFiller -cell FILL64BWP FILL32BWP FILL16BWP FILL8BWP FILL4BWP FILL3BWP FILL2BWP FILL1BWP -prefix filler_cell
ecoRoute
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
extractRC
rcOut -spef ./output/global_ctrl/global_ctrl_enc.spef
saveDesign ./output/global_ctrl/global_ctrl_enc.enc
saveNetlist ./output/global_ctrl/global_ctrl_enc.v
saveNetlist -phys -excludeLeafCell -excludeCellInst {TAPCELLBWP FILL64BWP FILL32BWP FILL16BWP FILL8BWP FILL4BWP FILL3BWP FILL2BWP FILL1BWP} output/global_ctrl/global_ctrl_enc_lvs.v
write_sdf output/${top_design}/${top_design}_enc.sdf -min_view fast_analysis -typ_view typ_analysis -max_view slow_analysis -recompute_delay_calc -version 3.0 -remashold -edges library
write_lef_abstract -add_obs_layers {M1 M2 M3} -specifyTopLayer M4 output/global_ctrl/global_ctrl.lef
streamOut output/global_ctrl/global_ctrl_enc.gds -mapFile ./gdsmap/gds2.map -libName global_ctrl -structureName global_ctrl -units 20000 -mode ALL
summaryReport
