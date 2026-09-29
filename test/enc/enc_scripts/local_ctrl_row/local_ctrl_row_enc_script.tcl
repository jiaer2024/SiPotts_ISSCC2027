################################### Setup and floorplan ###################################
setMultiCpuUsage -localCpu 48
set top_design local_ctrl_row 
source ./enc_scripts/$top_design/$top_design.globals
init_design

# get the site name from metal lef
set dieW 12 
set dieH 484.5 

floorPlan -site core -s $dieW $dieH 2 2 2 2 -noSnapToGrid
setDesignMode -process 40
source ./enc_scripts/local_ctrl_row/local_ctrl_row_pin_location.tcl

################################### Power plan for the core ###################################
clearGlobalNets

# Power for std cell: VDD/VSS VPW/VNW
globalNetConnect H_VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}

# Add metal core power ring
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer AP -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {H_VDD VSS} -type core_rings -follow core -layer {top M4 bottom M4 left M5 right M5} -width {top 0.4 bottom 0.4 left 0.4 right 0.4} -spacing {top 0.4 bottom 0.4 left 0.4 right 0.4} -offset {top 0 bottom 0 left 0 right 0} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

verifyConnectivity -error 10000

# Add well tap
addWellTap -cell TAPCELLBWP -cellInterval 40 -prefix WELLTAP
verifyWellTap -rule 40

deselectAll

# Sroute follow pin
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { corePin } -layerChangeRange { M1(1) M5(5) } -blockPinTarget { nearestTarget } -corePinTarget { blockring ring } -allowJogging 1 -crossoverViaLayerRange { M1(1) M5(5) } -nets { H_VDD VSS } -allowLayerChange 1 -targetViaLayerRange { M1(1) M5(5) }

################################### Place and optimise design ###################################
set_global timing_set_clock_source_to_output_as_data true

setPlaceMode -place_global_cong_effort high
setPlaceMode -place_global_max_density 0.7
#setPlaceMode -place_global_uniform_density true

place_opt_design

addTieHiLo -cell "TIEHBWP TIELBWP"
checkPlace

setOptMode -fixFanoutLoad true
optDesign -preCTS -drv

timeDesign -preCTS
timeDesign -preCTS -hold

################################### Clock tree synthesis ###################################
# Router setting
# set this to reserve space for multi-cut vias
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

create_ccopt_clock_tree_spec -filename ./ccopt/$top_design/ccopt.spec
source ./ccopt/$top_design/ccopt.spec
ccopt_design -cts

deleteTrialRoute
verify_drc -limit 1000000

report_ccopt_clock_trees -filename ./ccopt/$top_design/ccopt_report_trees.rpt

# Fix setup, hold timing violation and drv
optDesign -postCTS
setOptMode -fixFanoutLoad true
optDesign -postCTS -drv
optDesign -postCTS -hold
timeDesign -postCTS
timeDesign -postCTS -hold

################################### Post CTS route ###################################
setNanoRouteMode -routeTopRoutingLayer 5
setNanoRouteMode -routeBottomRoutingLayer 2
setNanoRouteMode -routeWithTimingDriven false
setNanoRouteMode -droutePostRouteSwapVia none
setNanoRouteMode -drouteUseMultiCutViaEffort medium
setNanoRouteMode -routeReserveSpaceForMultiCut false
setNanoRouteMode -routeWithViaOnlyForStandardCellPin true
setNanoRouteMode -routeWithViaInPin true
setNanoRouteMode -routeConcurrentMinimizeViaCountEffort "low"
setNanoRouteMode -drouteStartIteration default
setNanoRouteMode -drouteEndIteration default
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -drouteOnGridOnly none

globalDetailRoute

################################### Post route opt design ###################################
# fix clock tree DRC, skew... before move to optdesign
ccopt_pro

# These views can be find in mmmc setup (need to change views to make sure all corners - fast and slow are fine) Every optDesign need to followed by route_ccopt_clock_tree_nets for clock path routing.
setAnalysisMode -analysisType onChipVariation -cppr both
set_analysis_view -setup {fast_analysis typ_analysis slow_analysis} -hold {fast_analysis typ_analysis slow_analysis}

optDesign -postRoute
setOptMode -fixFanoutLoad true
optDesign -postRoute -drv
optDesign -postRoute -hold

timeDesign -postRoute
timeDesign -postRoute -hold

# Check DRC and LVS
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
editDeleteViolations

# Solve antenna violations
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -routeAntennaCellName "ANTENNABWP"
setNanoRouteMode -routeInsertAntennaDiode true
globalDetailRoute

################################### Add filler and De-cap ###################################
addFiller -cell {DCAP64BWP DCAPX64BWP DCAP32BWP DCAPX32BWP DCAP16BWP DCAPX16BWP DCAP8BWP DCAPX8BWP DCAP4BWP DCAPX4BWP DCAPBWP} -prefix filler_decap

addFiller -cell FILL64BWP FILL32BWP FILL16BWP FILL8BWP FILL4BWP FILL3BWP FILL2BWP FILL1BWP -prefix filler_cell

ecoRoute
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000

################################### Sign-Off and save design ###################################
extractRC
rcOut -spef ./output/${top_design}/${top_design}_enc.spef
saveDesign ./output/${top_design}/${top_design}_enc.enc
saveNetlist ./output/${top_design}/${top_design}_enc.v
saveNetlist -phys -excludeLeafCell -excludeCellInst {TAPCELLBWP FILL64BWP FILL32BWP FILL16BWP FILL8BWP FILL4BWP FILL3BWP FILL2BWP FILL1BWP} output/${top_design}/${top_design}_enc_lvs.v

write_lib -corner fast output/${top_design}/${top_design}_enc_fast.lib
write_lib -corner slow output/${top_design}/${top_design}_enc_slow.lib
write_sdf output/${top_design}/${top_design}_enc.sdf -min_view fast_analysis -typ_view typ_analysis -max_view slow_analysis -recompute_delay_calc -version 3.0 -remashold -edges library
write_lef_abstract -add_obs_layers {M1 M2 M3} -specifyTopLayer M4 output/${top_design}/${top_design}.lef
#streamOut output/${top_design}/${top_design}_enc.gds -mapFile ./gdsmap/gdsout_6X2Z.map -libName ${top_design} -structureName ${top_design} -units 20000 -mode ALL
streamOut output/${top_design}/${top_design}_enc.gds -mapFile ./gdsmap/gds2.map -libName ${top_design} -structureName ${top_design} -units 20000 -mode ALL

summaryReport
