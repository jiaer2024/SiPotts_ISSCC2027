################################### Setup and floorplan ###################################
setMultiCpuUsage -localCpu 48

set top_design padframe

source ./enc_scripts/padframe/padframe.globals
init_design

floorPlan -site core -b 0 0 3250 710 190 190 2850 310 400 400 410 410 -noSnapToGrid
dbSet [dbGet top.insts.name -p io_*].pstatus fixed
setDesignMode -process 40

################################### add fillers ###################################
# set fillers
set digi_io_fillers {PFILLER20_G PFILLER10_G PFILLER5_G PFILLER1_G}
set ana_io_fillers {PFILLER20A_G PFILLER10A_G PFILLER5A_G PFILLER1A_G}

# get box helper
proc box_of {inst} {
	return [dbGet [dbGet top.insts.name $inst -p].box]
}

# corner / break boxes
set tl 			[box_of CORNER_TL1]
set tr 			[box_of CORNER_TR1]
set bl 			[box_of CORNER_BL1]
set br 			[box_of CORNER_BR1]
set bright1 	[box_of break1]
set bright2 	[box_of break2]
set bright3 	[box_of break3]
set bright4 	[box_of break4]

# add IO filler
addIoFiller -cell $digi_io_fillers -prefix filler_top_dig -side top 
addIoFiller -cell $digi_io_fillers -prefix filler_right_digi -side right 
addIoFiller -cell $digi_io_fillers -prefix filler_bot_digi -side bottom -from [lindex [lindex $bl 0] 2] -to [lindex [lindex $bright4 0] 0]
addIoFiller -cell $ana_io_fillers -prefix filler_bot_ana -side bottom -from [lindex [lindex $bright4 0] 2] -to [lindex [lindex $bright3 0] 0]
addIoFiller -cell $digi_io_fillers -prefix filler_bot_digi -side bottom -from [lindex [lindex $bright3 0] 2] -to [lindex [lindex $bright2 0] 0]
addIoFiller -cell $ana_io_fillers -prefix filler_bot_ana -side bottom -from [lindex [lindex $bright2 0] 2] -to [lindex [lindex $bright1 0] 0]
addIoFiller -cell $digi_io_fillers -prefix filler_bot_digi -side bottom -from [lindex [lindex $bright1 0] 2] -to [lindex [lindex $br 0] 0]
addIoFiller -cell $digi_io_fillers -prefix filler_top_dig -side left 

source ./enc_scripts/padframe/padframe_pad.tcl

#source ./enc_scripts/padframe/padframe_pin_location.tcl

################################### Power plan for the core ###################################
source ./enc_scripts/padframe/padframe_powernet.tcl

################### Power ring ##################
# Add metal ring
addRing -nets {H_VDD VSS} -type core_rings -follow core -layer {top M8 bottom M8 left M7 right M7} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

# Add well tap
addWellTap -cell FILLTIE8_A9TR50 -cellInterval 21 -prefix WELLTAP
verifyWellTap -rule 21

# Add power rail and Sroute
sroute -connect { corePin } -layerChangeRange { M1(1) M8(8) } -blockPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 1 -crossoverViaLayerRange { M1(1) M8(8) } -nets { H_VDD VSS } -allowLayerChange 1 -targetViaLayerRange { M1(1) M8(8) }

################################### Place design ###################################
setPlaceMode -place_global_clock_gate_aware true
setPlaceMode -place_global_place_io_pins true
placeDesign

addTieHiLo -cell "TIEHBWP TIELBWP"
checkPlace

################################### Post CTS route ###################################
setNanoRouteMode -routeTopRoutingLayer 6
setNanoRouteMode -routeBottomRoutingLayer 1
# Set this to reserve space for multi-cut vias
setNanoRouteMode -routeWithTimingDriven false
setNanoRouteMode -droutePostRouteSwapVia multiCut
setNanoRouteMode -drouteUseMultiCutViaEffort high
setNanoRouteMode -routeReserveSpaceForMultiCut true
setNanoRouteMode -routeWithViaOnlyForStandardCellPin true
setNanoRouteMode -routeWithViaInPin true
setNanoRouteMode -routeConcurrentMinimizeViaCountEffort "low"
# To allow off-grid pins for routing
setNanoRouteMode -drouteOnGridOnly none

globalDetailRoute

detailRoute

################################### Add filler and De-cap ###################################
addFiller -cell {DCAP64BWP DCAPX64BWP DCAP32BWP DCAPX32BWP DCAP16BWP DCAPX16BWP DCAP8BWP DCAPX8BWP DCAP4BWP DCAPX4BWP DCAPBWP} -prefix filler_decap

addFiller -cell FILL64BWP FILL32BWP FILL16BWP FILL8BWP FILL4BWP FILL3BWP FILL2BWP FILL1BWP -prefix filler_cell

ecoRoute -target

# Check DRC and LVS
# Changed by Chne-Wuen 20211029
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000

################################### Sign-Off and save design ###################################
extractRC
rcOut -spef ./output/${top_design}/${top_design}_enc.spef
saveDesign ./output/${top_design}/${top_design}_enc.enc
saveNetlist ./output/${top_design}/${top_design}_enc.v
saveNetlist -phys -excludeLeafCell -excludeCellInst {FILL64BWP FILL32BWP FILL16BWP FILL8BWP FILL4BWP FILL3BWP FILL2BWP FILL1BWP PFILLER20_G PFILLER10_G PFILLER5_G PFILLER1_G PFILLER20A_G PFILLER10A_G PFILLER5A_G PFILLER1A_G PAD60NAU_SL PAD60GAU_SL PAD60NU_SL PAD60GU_SL PRCUTA_G PCORNER_G} output/${top_design}/${top_design}_enc_lvs.v
saveNetlist -phys ./output/${top_design}/${top_design}_digital_enc_all.v

# Generate appropriate gds2.map file!
streamOut output/${top_design}/${top_design}_enc.gds -mapFile ./gdsmap/gdsout_6X2Z.map -libName ${top_design} -structureName ${top_design} -units 20000 -mode ALL

