################################### Setup and floorplan ###################################
setMultiCpuUsage -localCpu 48

set top_design padframe

source ./enc_scripts/padframe/padframe.globals
init_design

floorPlan -site core -b 0 0 710 3250 190 190 310 2850 400 400 410 410 -noSnapToGrid
dbSet [dbGet top.insts.name -p io_*].pstatus fixed
setDesignMode -process 40

################################### add fillers ###################################
# set fillers
set digi_io_fillers {PFILLER20 PFILLER10 PFILLER5 PFILLER1}
set ana_io_fillers {PFILLER20A PFILLER10A PFILLER5A PFILLER1A}

# get box helper
proc box_of {inst} {
	return [dbGet [dbGet top.insts.name $inst -p].box]
}

# corner / break boxes
set tl 			[box_of CORNER_TL1]
set tr 			[box_of CORNER_TR1]
set bl 			[box_of CORNER_BL1]
set br 			[box_of CORNER_BR1]
set bleft 		[box_of break0]
set bbottom 	[box_of break3]

# add IO filler
addIoFiller -cell $digi_io_fillers -prefix filler_top_digi -side left -from [lindex [lindex $bl 0] 3] -to [expr [lindex [lindex $bleft 0] 3]+10]
addIoFiller -cell $ana_io_fillers -prefix filler_top_ana -side left -from [lindex [lindex $bleft 0] 3] -to [lindex [lindex $tl 0] 1]
addIoFiller -cell $ana_io_fillers -prefix filler_right_ana -side top 
addIoFiller -cell $ana_io_fillers -prefix filler_bot_ana -side right 
addIoFiller -cell $digi_io_fillers -prefix filler_top_digi -side bottom -from [lindex [lindex $bl 0] 2] -to [lindex [lindex $bbottom 0] 0]
addIoFiller -cell $ana_io_fillers -prefix filler_top_ana -side bottom -from [lindex [lindex $bbottom 0] 2] -to [lindex [lindex $br 0] 0]

source ./enc_scripts/padframe/padframe_pad.tcl

#source ./enc_scripts/padframe/padframe_pin_location.tcl

verify_drc -limit 100000
verifyConnectivity -error 100000

################################### Sign-Off and save design ###################################
saveDesign ./output/${top_design}/${top_design}_enc.enc
saveNetlist ./output/${top_design}/${top_design}_enc.v
saveNetlist -phys -excludeLeafCell -excludeCellInst {FILL64BWP FILL32BWP FILL16BWP FILL8BWP FILL4BWP FILL3BWP FILL2BWP FILL1BWP PFILLER20 PFILLER10 PFILLER5 PFILLER1 PFILLER20A PFILLER10A PFILLER5A PFILLER1A PAD60NA PAD60NU PAD60NAU PAD60GAU PAD60NU PAD60GU PRCUTA PCORNER PCORNERA} output/${top_design}/${top_design}_enc_lvs.v
saveNetlist -phys ./output/${top_design}/${top_design}_digital_enc_all.v

# Generate appropriate gds2.map file!
streamOut output/${top_design}/${top_design}_enc.gds -mapFile ./gdsmap/gdsout_6X2Z.map -libName ${top_design} -structureName ${top_design} -units 20000 -mode ALL

