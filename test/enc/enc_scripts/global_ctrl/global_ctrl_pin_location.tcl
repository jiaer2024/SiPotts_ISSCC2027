setPinAssignMode -pinEditInBatch true

set CTRL_CNT 	42
set COL_CNT 	10	
set ROW_CNT 	8
set UC_DIGI_WIDTH 16	
set UC_ANA_WIDTH 21.25

# Left 
editPin -pinWidth 0.2 -pinDepth 0.2 \
	-fixedPin 1 -snap USERGRID -fixOverlap 1 \
	-unit MICRON -spreadDirection clockwise -side left \
	-layer 4 -spreadType \
	start -spacing 0.5 -start 0.1 1.0 \
	-pin {clk rstn p_en en_g wr_data_in_g \
	rd_vld_g rd_data_out_g p_out_vld_g p_out_g}

# Bottom 
editPin -pinWidth 0.2 -pinDepth 0.2 \
	-fixedPin 1 -snap USERGRID -fixOverlap 0 \
	-unit MICRON -spreadDirection counterclockwise -side bottom \
	-layer 4 -spreadType start -spacing 1.1 -start 0.1 0 \
	-pin {couple_en wr_data_in_g_d2} 
for {set i 0} {$i < $ROW_CNT} {incr i} {
	set pins {}
	set idx [expr {$i}]
	lappend pins [format {wr_vld_bus[%d]} $idx]
	lappend pins [format {rd_rdy_bus[%d]} $idx]
	lappend pins [format {rd_vld_bus[%d]} $idx]
	lappend pins [format {rd_data_out_bus[%d]} $idx]
	lappend pins [format {p_code_vld_bus[%d]} $idx]
	lappend pins [format {p_out_vld_bus[%d]} $idx]
	lappend pins [format {p_out_bus[%d]} $idx]
	
	puts "pins = $pins"

	editPin -pinWidth 0.2 -pinDepth 0.2 \
		-fixedPin 1 -snap USERGRID -fixOverlap 1 \
		-unit MICRON -spreadDirection counterclockwise -side bottom \
		-layer 4 -spreadType start -spacing 1.1 -start [expr 4.3+$UC_DIGI_WIDTH*$i+$UC_ANA_WIDTH*($i+1)] 0 \
		-pin $pins
}

setPinAssignMode -pinEditInBatch false
