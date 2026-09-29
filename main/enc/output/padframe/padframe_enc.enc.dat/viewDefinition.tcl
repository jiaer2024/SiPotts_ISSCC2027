if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name fast\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tcbn40lpbwpbc_ccs.lib\
    ${::IMEX::libVar}/mmmc/tphn40lpgv2od3_slbc.lib\
    ${::IMEX::libVar}/mmmc/tpfn40lpgv2od3bc.lib\
    ${::IMEX::libVar}/mmmc/tpan40lpgv2od3bc.lib]
create_library_set -name slow\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tcbn40lpbwpwc_ccs.lib\
    ${::IMEX::libVar}/mmmc/tphn40lpgv2od3_slwc.lib\
    ${::IMEX::libVar}/mmmc/tpfn40lpgv2od3wc.lib\
    ${::IMEX::libVar}/mmmc/tpan40lpgv2od3wc.lib]
create_library_set -name typical\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tcbn40lpbwptc_ccs.lib\
    ${::IMEX::libVar}/mmmc/tphn40lpgv2od3_sltc.lib\
    ${::IMEX::libVar}/mmmc/tpfn40lpgv2od3tc.lib\
    ${::IMEX::libVar}/mmmc/tpan40lpgv2od3tc.lib]
create_rc_corner -name slow_rc\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 125\
   -qx_tech_file ${::IMEX::libVar}/mmmc/slow_rc/qrcTechFile
create_rc_corner -name fast_rc\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 0\
   -qx_tech_file ${::IMEX::libVar}/mmmc/fast_rc/qrcTechFile
create_rc_corner -name typ_rc\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 25\
   -qx_tech_file ${::IMEX::libVar}/mmmc/typ_rc/qrcTechFile
create_delay_corner -name slow_delay\
   -library_set slow\
   -rc_corner slow_rc
create_delay_corner -name typ_delay\
   -library_set typical\
   -rc_corner typ_rc
create_delay_corner -name fast_delay\
   -library_set fast\
   -rc_corner fast_rc
create_constraint_mode -name cons_mode\
   -sdc_files\
    [list ${::IMEX::libVar}/mmmc/padframe.sdc]
create_analysis_view -name slow_analysis -constraint_mode cons_mode -delay_corner slow_delay
create_analysis_view -name fast_analysis -constraint_mode cons_mode -delay_corner fast_delay
create_analysis_view -name typ_analysis -constraint_mode cons_mode -delay_corner typ_delay
set_analysis_view -setup [list fast_analysis typ_analysis slow_analysis] -hold [list fast_analysis typ_analysis slow_analysis]
