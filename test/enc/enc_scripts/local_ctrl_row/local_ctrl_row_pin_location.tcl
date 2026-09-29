setPinAssignMode -pinEditInBatch true

set CTRL_CNT  	42	
set COL_CNT 	10	
set UC_height 	48.45

# Top 
editPin -pinWidth 0.2 -pinDepth 0.2 \
	-fixedPin 1 -snap USERGRID -fixOverlap 0 \
	-unit MICRON -spreadDirection clockwise -side top \
	-layer 4 -spreadType start -spacing 1.1 -start 1.0 $dieH-0.1 \
	-pin {clk rstn wr_data_in wr_vld rd_rdy rd_vld rd_data_out p_code_vld p_out_vld p_out}

# Left 
for {set i 0} {$i < $COL_CNT} {incr i} {
	set pins {}
	
	for {set j 0} {$j < 15} {incr j} {
		set idx [expr {$j+$i*$CTRL_CNT}]
		lappend pins [format {cp_ctrl[%d]} $idx]
	}

	set CTRL_40 [expr {40+$i*$CTRL_CNT}]
	lappend pins [format {cp_ctrl[%d]} $CTRL_40]

	for {set j 15} {$j < 29} {incr j} {
		set idx [expr {$j+$i*$CTRL_CNT}]
		lappend pins [format {cp_ctrl[%d]} $idx]
	}

	set CTRL_41 [expr {41+$i*$CTRL_CNT}]
	lappend pins [format {cp_ctrl[%d]} $CTRL_41]

	for {set j 29} {$j < 33} {incr j} {
		set idx [expr {$j+$i*$CTRL_CNT}]
		lappend pins [format {cp_ctrl[%d]} $idx]
	}

	set P_code_idx0 [expr {$i*2}]
	set P_code_idx1 [expr {$i*2+1}]
	lappend pins [format {p_code[%d]} $P_code_idx0]
	lappend pins [format {p_code[%d]} $P_code_idx1]

	for {set j 33} {$j < $CTRL_CNT-2} {incr j} {
		set idx [expr {$j+$i*$CTRL_CNT}]
		lappend pins [format {cp_ctrl[%d]} $idx]
	}
	puts "pins = $pins"
	editPin -pinWidth 0.2 -pinDepth 0.2 \
		-fixedPin 1 -snap USERGRID -fixOverlap 0 \
		-unit MICRON -spreadDirection counterclockwise -side left\
		-layer 4 -spreadType start -spacing 0.98 -start 0.1 [expr $UC_height*($i+1)] \
		-pin $pins
}
setPinAssignMode -pinEditInBatch false
