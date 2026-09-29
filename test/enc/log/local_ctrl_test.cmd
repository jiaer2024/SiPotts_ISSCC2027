#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Apr 28 20:49:48 2026                
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
set init_mmmc_file enc_scripts/local_ctrl_row/local_ctrl_row_mmmc.view
set init_pwr_net H_VDD
set init_verilog ../syn/output/local_ctrl_row/local_ctrl_row_gate.v
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
set report_inactive_arcs_format {from to when arc_type sense reason}
set soft_stack_size_limit 515
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
init_design
floorPlan -site core -s 12 484.5 2 2 2 2 -noSnapToGrid
setDesignMode -process 40
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection clockwise -side top -layer 4 -spreadType start -spacing 1.1 -start 1.0 484.5-0.1 -pin {clk rstn wr_data_in wr_vld rd_rdy rd_vld rd_data_out p_code_vld p_out_vld p_out}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 48.45 -pin {{cp_ctrl[0]} {cp_ctrl[1]} {cp_ctrl[2]} {cp_ctrl[3]} {cp_ctrl[4]} {cp_ctrl[5]} {cp_ctrl[6]} {cp_ctrl[7]} {cp_ctrl[8]} {cp_ctrl[9]} {cp_ctrl[10]} {cp_ctrl[11]} {cp_ctrl[12]} {cp_ctrl[13]} {cp_ctrl[14]} {cp_ctrl[40]} {cp_ctrl[15]} {cp_ctrl[16]} {cp_ctrl[17]} {cp_ctrl[18]} {cp_ctrl[19]} {cp_ctrl[20]} {cp_ctrl[21]} {cp_ctrl[22]} {cp_ctrl[23]} {cp_ctrl[24]} {cp_ctrl[25]} {cp_ctrl[26]} {cp_ctrl[27]} {cp_ctrl[28]} {cp_ctrl[41]} {cp_ctrl[29]} {cp_ctrl[30]} {cp_ctrl[31]} {cp_ctrl[32]} {p_code[0]} {p_code[1]} {cp_ctrl[33]} {cp_ctrl[34]} {cp_ctrl[35]} {cp_ctrl[36]} {cp_ctrl[37]} {cp_ctrl[38]} {cp_ctrl[39]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 96.9 -pin {{cp_ctrl[42]} {cp_ctrl[43]} {cp_ctrl[44]} {cp_ctrl[45]} {cp_ctrl[46]} {cp_ctrl[47]} {cp_ctrl[48]} {cp_ctrl[49]} {cp_ctrl[50]} {cp_ctrl[51]} {cp_ctrl[52]} {cp_ctrl[53]} {cp_ctrl[54]} {cp_ctrl[55]} {cp_ctrl[56]} {cp_ctrl[82]} {cp_ctrl[57]} {cp_ctrl[58]} {cp_ctrl[59]} {cp_ctrl[60]} {cp_ctrl[61]} {cp_ctrl[62]} {cp_ctrl[63]} {cp_ctrl[64]} {cp_ctrl[65]} {cp_ctrl[66]} {cp_ctrl[67]} {cp_ctrl[68]} {cp_ctrl[69]} {cp_ctrl[70]} {cp_ctrl[83]} {cp_ctrl[71]} {cp_ctrl[72]} {cp_ctrl[73]} {cp_ctrl[74]} {p_code[2]} {p_code[3]} {cp_ctrl[75]} {cp_ctrl[76]} {cp_ctrl[77]} {cp_ctrl[78]} {cp_ctrl[79]} {cp_ctrl[80]} {cp_ctrl[81]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 145.35 -pin {{cp_ctrl[84]} {cp_ctrl[85]} {cp_ctrl[86]} {cp_ctrl[87]} {cp_ctrl[88]} {cp_ctrl[89]} {cp_ctrl[90]} {cp_ctrl[91]} {cp_ctrl[92]} {cp_ctrl[93]} {cp_ctrl[94]} {cp_ctrl[95]} {cp_ctrl[96]} {cp_ctrl[97]} {cp_ctrl[98]} {cp_ctrl[124]} {cp_ctrl[99]} {cp_ctrl[100]} {cp_ctrl[101]} {cp_ctrl[102]} {cp_ctrl[103]} {cp_ctrl[104]} {cp_ctrl[105]} {cp_ctrl[106]} {cp_ctrl[107]} {cp_ctrl[108]} {cp_ctrl[109]} {cp_ctrl[110]} {cp_ctrl[111]} {cp_ctrl[112]} {cp_ctrl[125]} {cp_ctrl[113]} {cp_ctrl[114]} {cp_ctrl[115]} {cp_ctrl[116]} {p_code[4]} {p_code[5]} {cp_ctrl[117]} {cp_ctrl[118]} {cp_ctrl[119]} {cp_ctrl[120]} {cp_ctrl[121]} {cp_ctrl[122]} {cp_ctrl[123]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 193.8 -pin {{cp_ctrl[126]} {cp_ctrl[127]} {cp_ctrl[128]} {cp_ctrl[129]} {cp_ctrl[130]} {cp_ctrl[131]} {cp_ctrl[132]} {cp_ctrl[133]} {cp_ctrl[134]} {cp_ctrl[135]} {cp_ctrl[136]} {cp_ctrl[137]} {cp_ctrl[138]} {cp_ctrl[139]} {cp_ctrl[140]} {cp_ctrl[166]} {cp_ctrl[141]} {cp_ctrl[142]} {cp_ctrl[143]} {cp_ctrl[144]} {cp_ctrl[145]} {cp_ctrl[146]} {cp_ctrl[147]} {cp_ctrl[148]} {cp_ctrl[149]} {cp_ctrl[150]} {cp_ctrl[151]} {cp_ctrl[152]} {cp_ctrl[153]} {cp_ctrl[154]} {cp_ctrl[167]} {cp_ctrl[155]} {cp_ctrl[156]} {cp_ctrl[157]} {cp_ctrl[158]} {p_code[6]} {p_code[7]} {cp_ctrl[159]} {cp_ctrl[160]} {cp_ctrl[161]} {cp_ctrl[162]} {cp_ctrl[163]} {cp_ctrl[164]} {cp_ctrl[165]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 242.25 -pin {{cp_ctrl[168]} {cp_ctrl[169]} {cp_ctrl[170]} {cp_ctrl[171]} {cp_ctrl[172]} {cp_ctrl[173]} {cp_ctrl[174]} {cp_ctrl[175]} {cp_ctrl[176]} {cp_ctrl[177]} {cp_ctrl[178]} {cp_ctrl[179]} {cp_ctrl[180]} {cp_ctrl[181]} {cp_ctrl[182]} {cp_ctrl[208]} {cp_ctrl[183]} {cp_ctrl[184]} {cp_ctrl[185]} {cp_ctrl[186]} {cp_ctrl[187]} {cp_ctrl[188]} {cp_ctrl[189]} {cp_ctrl[190]} {cp_ctrl[191]} {cp_ctrl[192]} {cp_ctrl[193]} {cp_ctrl[194]} {cp_ctrl[195]} {cp_ctrl[196]} {cp_ctrl[209]} {cp_ctrl[197]} {cp_ctrl[198]} {cp_ctrl[199]} {cp_ctrl[200]} {p_code[8]} {p_code[9]} {cp_ctrl[201]} {cp_ctrl[202]} {cp_ctrl[203]} {cp_ctrl[204]} {cp_ctrl[205]} {cp_ctrl[206]} {cp_ctrl[207]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 290.7 -pin {{cp_ctrl[210]} {cp_ctrl[211]} {cp_ctrl[212]} {cp_ctrl[213]} {cp_ctrl[214]} {cp_ctrl[215]} {cp_ctrl[216]} {cp_ctrl[217]} {cp_ctrl[218]} {cp_ctrl[219]} {cp_ctrl[220]} {cp_ctrl[221]} {cp_ctrl[222]} {cp_ctrl[223]} {cp_ctrl[224]} {cp_ctrl[250]} {cp_ctrl[225]} {cp_ctrl[226]} {cp_ctrl[227]} {cp_ctrl[228]} {cp_ctrl[229]} {cp_ctrl[230]} {cp_ctrl[231]} {cp_ctrl[232]} {cp_ctrl[233]} {cp_ctrl[234]} {cp_ctrl[235]} {cp_ctrl[236]} {cp_ctrl[237]} {cp_ctrl[238]} {cp_ctrl[251]} {cp_ctrl[239]} {cp_ctrl[240]} {cp_ctrl[241]} {cp_ctrl[242]} {p_code[10]} {p_code[11]} {cp_ctrl[243]} {cp_ctrl[244]} {cp_ctrl[245]} {cp_ctrl[246]} {cp_ctrl[247]} {cp_ctrl[248]} {cp_ctrl[249]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 339.15 -pin {{cp_ctrl[252]} {cp_ctrl[253]} {cp_ctrl[254]} {cp_ctrl[255]} {cp_ctrl[256]} {cp_ctrl[257]} {cp_ctrl[258]} {cp_ctrl[259]} {cp_ctrl[260]} {cp_ctrl[261]} {cp_ctrl[262]} {cp_ctrl[263]} {cp_ctrl[264]} {cp_ctrl[265]} {cp_ctrl[266]} {cp_ctrl[292]} {cp_ctrl[267]} {cp_ctrl[268]} {cp_ctrl[269]} {cp_ctrl[270]} {cp_ctrl[271]} {cp_ctrl[272]} {cp_ctrl[273]} {cp_ctrl[274]} {cp_ctrl[275]} {cp_ctrl[276]} {cp_ctrl[277]} {cp_ctrl[278]} {cp_ctrl[279]} {cp_ctrl[280]} {cp_ctrl[293]} {cp_ctrl[281]} {cp_ctrl[282]} {cp_ctrl[283]} {cp_ctrl[284]} {p_code[12]} {p_code[13]} {cp_ctrl[285]} {cp_ctrl[286]} {cp_ctrl[287]} {cp_ctrl[288]} {cp_ctrl[289]} {cp_ctrl[290]} {cp_ctrl[291]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 387.6 -pin {{cp_ctrl[294]} {cp_ctrl[295]} {cp_ctrl[296]} {cp_ctrl[297]} {cp_ctrl[298]} {cp_ctrl[299]} {cp_ctrl[300]} {cp_ctrl[301]} {cp_ctrl[302]} {cp_ctrl[303]} {cp_ctrl[304]} {cp_ctrl[305]} {cp_ctrl[306]} {cp_ctrl[307]} {cp_ctrl[308]} {cp_ctrl[334]} {cp_ctrl[309]} {cp_ctrl[310]} {cp_ctrl[311]} {cp_ctrl[312]} {cp_ctrl[313]} {cp_ctrl[314]} {cp_ctrl[315]} {cp_ctrl[316]} {cp_ctrl[317]} {cp_ctrl[318]} {cp_ctrl[319]} {cp_ctrl[320]} {cp_ctrl[321]} {cp_ctrl[322]} {cp_ctrl[335]} {cp_ctrl[323]} {cp_ctrl[324]} {cp_ctrl[325]} {cp_ctrl[326]} {p_code[14]} {p_code[15]} {cp_ctrl[327]} {cp_ctrl[328]} {cp_ctrl[329]} {cp_ctrl[330]} {cp_ctrl[331]} {cp_ctrl[332]} {cp_ctrl[333]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 436.05 -pin {{cp_ctrl[336]} {cp_ctrl[337]} {cp_ctrl[338]} {cp_ctrl[339]} {cp_ctrl[340]} {cp_ctrl[341]} {cp_ctrl[342]} {cp_ctrl[343]} {cp_ctrl[344]} {cp_ctrl[345]} {cp_ctrl[346]} {cp_ctrl[347]} {cp_ctrl[348]} {cp_ctrl[349]} {cp_ctrl[350]} {cp_ctrl[376]} {cp_ctrl[351]} {cp_ctrl[352]} {cp_ctrl[353]} {cp_ctrl[354]} {cp_ctrl[355]} {cp_ctrl[356]} {cp_ctrl[357]} {cp_ctrl[358]} {cp_ctrl[359]} {cp_ctrl[360]} {cp_ctrl[361]} {cp_ctrl[362]} {cp_ctrl[363]} {cp_ctrl[364]} {cp_ctrl[377]} {cp_ctrl[365]} {cp_ctrl[366]} {cp_ctrl[367]} {cp_ctrl[368]} {p_code[16]} {p_code[17]} {cp_ctrl[369]} {cp_ctrl[370]} {cp_ctrl[371]} {cp_ctrl[372]} {cp_ctrl[373]} {cp_ctrl[374]} {cp_ctrl[375]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 484.5 -pin {{cp_ctrl[378]} {cp_ctrl[379]} {cp_ctrl[380]} {cp_ctrl[381]} {cp_ctrl[382]} {cp_ctrl[383]} {cp_ctrl[384]} {cp_ctrl[385]} {cp_ctrl[386]} {cp_ctrl[387]} {cp_ctrl[388]} {cp_ctrl[389]} {cp_ctrl[390]} {cp_ctrl[391]} {cp_ctrl[392]} {cp_ctrl[418]} {cp_ctrl[393]} {cp_ctrl[394]} {cp_ctrl[395]} {cp_ctrl[396]} {cp_ctrl[397]} {cp_ctrl[398]} {cp_ctrl[399]} {cp_ctrl[400]} {cp_ctrl[401]} {cp_ctrl[402]} {cp_ctrl[403]} {cp_ctrl[404]} {cp_ctrl[405]} {cp_ctrl[406]} {cp_ctrl[419]} {cp_ctrl[407]} {cp_ctrl[408]} {cp_ctrl[409]} {cp_ctrl[410]} {p_code[18]} {p_code[19]} {cp_ctrl[411]} {cp_ctrl[412]} {cp_ctrl[413]} {cp_ctrl[414]} {cp_ctrl[415]} {cp_ctrl[416]} {cp_ctrl[417]}}
setPinAssignMode -pinEditInBatch false
clearGlobalNets
globalNetConnect H_VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer AP -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {H_VDD VSS} -type core_rings -follow core -layer {top M4 bottom M4 left M5 right M5} -width {top 0.4 bottom 0.4 left 0.4 right 0.4} -spacing {top 0.4 bottom 0.4 left 0.4 right 0.4} -offset {top 0 bottom 0 left 0 right 0} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
verifyConnectivity -error 10000
addWellTap -cell TAPCELLBWP -cellInterval 40 -prefix WELLTAP
verifyWellTap -rule 40
deselectAll
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { corePin } -layerChangeRange { M1(1) M5(5) } -blockPinTarget { nearestTarget } -corePinTarget { blockring ring } -allowJogging 1 -crossoverViaLayerRange { M1(1) M5(5) } -nets { H_VDD VSS } -allowLayerChange 1 -targetViaLayerRange { M1(1) M5(5) }
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
create_route_type -name rule_leaf -top_preferred_layer M5 -bottom_preferred_layer M4
create_route_type -name rule_trunk -top_preferred_layer M4 -bottom_preferred_layer M3
create_route_type -name rule_top -top_preferred_layer M3 -bottom_preferred_layer M2
set_ccopt_property -net_type leaf route_type rule_leaf
set_ccopt_property -net_type trunk route_type rule_trunk
set_ccopt_property -net_type top route_type rule_top
set_ccopt_property target_max_trans auto
set_ccopt_property target_skew 100ps
set_ccopt_property -cts_buffer_cells {BUFFD0BWP BUFFD1BWP BUFFD2BWP BUFFD3BWP BUFFD4BWP BUFFD6BWP BUFFD8BWP BUFFD12BWP BUFFD16BWP BUFFD20BWP BUFFD24BWP}
set_ccopt_property -cts_use_inverters false
create_ccopt_clock_tree_spec -filename ./ccopt/local_ctrl_row/ccopt.spec
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
verify_drc -limit 1000000
report_ccopt_clock_trees -filename ./ccopt/local_ctrl_row/ccopt_report_trees.rpt
optDesign -postCTS
setOptMode -fixFanoutLoad true
optDesign -postCTS -drv
optDesign -postCTS -hold
timeDesign -postCTS
timeDesign -postCTS -hold
setNanoRouteMode -routeTopRoutingLayer 5
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
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
fit
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserDelete -tool NanoRoute -type Geometry -subtype {Metal Short} -layertype M2(2)
violationBrowserDelete -tool NanoRoute -type Geometry -subtype {Parallel Run Length Spacing} -layertype M2(2)
violationBrowserDelete -tool NanoRoute -type Geometry -subtype {Metal Short}
violationBrowserDelete -tool NanoRoute -type Geometry -subtype {Parallel Run Length Spacing}
violationBrowserDelete -tool NanoRoute -type Geometry
violationBrowserDelete -tool Verify -type Geometry -subtype Short -layertype M2(2)
violationBrowserDelete -tool Verify -type Geometry -subtype Spacing -layertype M2(2)
violationBrowserDelete -tool NanoRoute
violationBrowserDelete -tool Verify
violationBrowserDelete -tool Verify -type Geometry
violationBrowserDelete -tool Verify -type Geometry -subtype Short
violationBrowserDelete -tool Verify -type Geometry -subtype Spacing
violationBrowserClose
optDesign -postRoute
setOptMode -fixFanoutLoad true
optDesign -postRoute -drv
optDesign -postRoute -hold
timeDesign -postRoute
timeDesign -postRoute -hold
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserDelete -tool Verify -type Geometry -subtype Short -layertype M2(2)
violationBrowserDelete -tool Verify -type Geometry -subtype Spacing -layertype M2(2)
violationBrowserDelete -tool Verify
violationBrowserDelete -tool Verify -type Geometry
violationBrowserDelete -tool Verify -type Geometry -subtype Short
violationBrowserDelete -tool Verify -type Geometry -subtype Spacing
violationBrowserClose
optDesign -postRoute
setOptMode -fixFanoutLoad true
optDesign -postRoute -drv
optDesign -postRoute -hold
timeDesign -postRoute
timeDesign -postRoute -hold
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
zoomBox 4.585 129.285 5.715 130.355
zoomBox 3.76050 129.36000 6.56600 130.26950
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference M2 -isVisible 1
zoomBox 4.585 129.285 5.715 130.355
selectWire 5.1150 129.7850 5.8850 129.8550 2 CTS_3
deleteSelectedFromFPlan
selectWire 4.6950 129.7850 5.1850 129.8550 2 {cp_ctrl[100]}
deleteSelectedFromFPlan
selectWire 5.0850 129.7550 5.5500 129.8850 2 CTS_3
zoomBox 3.86750 129.22400 5.10550 129.62550
zoomBox 3.73550 129.18550 5.19300 129.65800
zoomBox 3.18900 129.03650 5.56250 129.80600
zoomBox 2.94100 128.97200 5.73400 129.87750
zoomBox 3.56850 129.21650 5.58800 129.87100
zoomBox 4.16150 129.40800 7.14650 130.89250
setLayerPreference M3 -isVisible 1
setLayerPreference VIA2 -isVisible 1
zoomBox 4.45350 129.50200 6.61100 130.57500
deselectAll
selectMarker 5.0850 129.7850 5.2150 129.8550 2 1 6
deselectAll
selectMarker 5.0850 129.7850 5.2150 129.8550 2 1 6
deleteSelectedFromFPlan
selectVia 5.0850 129.7550 5.2150 129.8850 3 CTS_3
deleteSelectedFromFPlan
selectWire 5.1150 129.7850 5.1850 131.8150 3 CTS_3
deselectAll
selectWire 5.0850 129.7550 5.5500 129.8850 2 CTS_3
zoomBox 4.575 129.385 5.585 130.425
zoomBox 3.70250 129.43700 10.26600 132.70100
zoomBox 4.575 129.385 5.585 130.425
zoomBox 4.22450 129.44400 6.00250 130.32800
zoomBox 4.38650 129.49400 5.89800 130.24550
deselectAll
selectWire 5.0850 129.7550 5.5500 129.8850 2 CTS_3
deselectAll
selectWire 5.0850 129.7550 5.5500 129.8850 2 CTS_3
deselectAll
selectWire 5.1150 129.7850 5.1850 131.8150 3 CTS_3
deselectAll
selectWire 5.0850 129.7550 5.5500 129.8850 2 CTS_3
deleteSelectedFromFPlan
zoomBox 4.575 129.385 5.585 130.425
violationBrowserDelete -tool Verify -type Geometry -subtype Spacing -layertype M2(2) -violation {  M2(2)  NET    FE_OFN439_wr_vld  NET    CTS_3  (5.075, 129.885) (5.085, 129.925)  0x7f834a4f79d0}
violationBrowserClose
optDesign -postRoute
setOptMode -fixFanoutLoad true
optDesign -postRoute -drv
optDesign -postRoute -hold
timeDesign -postRoute
timeDesign -postRoute -hold
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
selectInst cp_ctrl_reg_99_
fit
zoomBox -36.37950 177.08150 237.09350 40.34500
zoomBox -4.33200 144.72850 33.51450 116.64900
zoomBox -1.26650 142.22150 30.32300 122.54050
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserDelete -tool Verify -type Geometry -subtype MinArea -layertype M2(2)
violationBrowserDelete -tool Verify -type Geometry -subtype MinArea -layertype M3(3)
violationBrowserDelete -tool Verify -type Geometry -subtype MinArea -layertype M4(4)
violationBrowserDelete -tool Verify
violationBrowserDelete -tool Verify -type Geometry
violationBrowserDelete -tool Verify -type Geometry -subtype MinArea
violationBrowserClose
ecoRoute -fix_drc
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
setNanoRouteMode -drouteFixMinArea true
verify_drc -check_only minArea
setNanoRouteMode -drouteFixMinArea true
routeDesign -detail
ecoRoute -fix_drc
verify_drc -check_only minArea
deselectAll
fit
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
timeDesign -postRoute
timeDesign -postRoute -hold
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -routeAntennaCellName ANTENNABWP
setNanoRouteMode -routeInsertAntennaDiode true
globalDetailRoute
timeDesign -postRoute
timeDesign -postRoute -hold
addFiller -cell {DCAP64BWP DCAPX64BWP DCAP32BWP DCAPX32BWP DCAP16BWP DCAPX16BWP DCAP8BWP DCAPX8BWP DCAP4BWP DCAPX4BWP DCAPBWP} -prefix filler_decap
addFiller -cell FILL64BWP FILL32BWP FILL16BWP FILL8BWP FILL4BWP FILL3BWP FILL2BWP FILL1BWP -prefix filler_cell
ecoRoute
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
extractRC
rcOut -spef ./output/local_ctrl_row/local_ctrl_row_enc.spef
saveDesign ./output/local_ctrl_row/local_ctrl_row_enc.enc
saveNetlist ./output/local_ctrl_row/local_ctrl_row_enc.v
saveNetlist -phys -excludeLeafCell -excludeCellInst {TAPCELLBWP FILL64BWP FILL32BWP FILL16BWP FILL8BWP FILL4BWP FILL3BWP FILL2BWP FILL1BWP} output/local_ctrl_row/local_ctrl_row_enc_lvs.v
write_sdf output/${top_design}/${top_design}_enc.sdf -min_view fast_analysis -typ_view typ_analysis -max_view slow_analysis -recompute_delay_calc -version 3.0 -remashold -edges library
write_lef_abstract -add_obs_layers {M1 M2 M3} -specifyTopLayer M4 output/local_ctrl_row/local_ctrl_row.lef
streamOut output/local_ctrl_row/local_ctrl_row_enc.gds -mapFile ./gdsmap/gds2.map -libName local_ctrl_row -structureName local_ctrl_row -units 20000 -mode ALL
summaryReport
