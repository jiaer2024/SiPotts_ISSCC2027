set io_pads [dbGet top.insts.name io*]

set die_lx [dbGet top.fPlan.box_llx]
set die_ly [dbGet top.fPlan.box_lly]
set die_ux [dbGet top.fPlan.box_urx]
set die_uy [dbGet top.fPlan.box_ury]

set top_list {}
set right_list {}
set bottom_list {}
set left_list {}

foreach pads $io_pads {
    set pads_addr [dbGet top.insts.name $pads -p]
    if {$pads_addr == "0x0"} { continue }

    set x [dbGet $pads_addr.pt_x]
    set y [dbGet $pads_addr.pt_y]

    set dl [expr {$x - $die_lx}]
    set dr [expr {$die_ux - $x}]
    set db [expr {$y - $die_ly}]
    set dt [expr {$die_uy - $y}]

    set dmin [lindex [lsort -real [list $dl $dr $db $dt]] 0]

    if {$dmin == $dt} {
        lappend top_list [list $x $pads]
    } elseif {$dmin == $dr} {
        lappend right_list [list $y $pads]
    } elseif {$dmin == $db} {
        lappend bottom_list [list $x $pads]
    } else {
        lappend left_list [list $y $pads]
    }
}

set ordered_pads {}

foreach item [lsort -real -index 0 $top_list] {
    lappend ordered_pads [lindex $item 1]
}
foreach item [lsort -real -decreasing -index 0 $right_list] {
    lappend ordered_pads [lindex $item 1]
}
foreach item [lsort -real -decreasing -index 0 $bottom_list] {
    lappend ordered_pads [lindex $item 1]
}
foreach item [lsort -real -index 0 $left_list] {
    lappend ordered_pads [lindex $item 1]
}


set i 0
foreach pads $ordered_pads {
    incr i

    set pads_addr [dbGet top.insts.name $pads -p]
	set pads_top [dbGet $pads_addr.box_ury]
	set pads_right [dbGet $pads_addr.box_urx]
    set pads_ptx  [dbGet $pads_addr.pt_x]
    set pads_pty  [dbGet $pads_addr.pt_y]
    set pads_ori  [dbGet $pads_addr.orient]
    set pads_cell [dbGet $pads_addr.cell.name]

    if {[dbGet top.insts.name CUP_$pads] == "0x0"} {
        if {$pads_cell == "PVDD3AC_G" || $pads_cell == "PVSS3AC_G" || $pads_cell == "PDB3AC_G"} {
            if {$i % 2 == 0} {
                set cup_cell PAD60NAU_SL
				set pad_height 169.255 
            } else {
                set cup_cell PAD60GAU_SL
				set pad_height 79.475
            }
        } else {
            if {$i % 2 == 0} {
                set cup_cell PAD60NU_SL
				set pad_height 169.255 
            } else {
                set cup_cell PAD60GU_SL
				set pad_height 79.475
            }
        }
		if {$i == 68 || $i == 90} {
			incr i
		}
        addInst $cup_cell -physical -inst CUP_$pads
		if {$i < 47} {
	        placeInstance CUP_$pads $pads_ptx [expr {$pads_top-$pad_height}] $pads_ori 
		} elseif {$i < 50} {
	        placeInstance CUP_$pads [expr {$pads_right-$pad_height}] $pads_pty $pads_ori 
		} else {
	        placeInstance CUP_$pads $pads_ptx $pads_pty $pads_ori
		}
    }
}
