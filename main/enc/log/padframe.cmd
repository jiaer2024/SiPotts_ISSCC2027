#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Apr 28 12:33:29 2026                
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
set init_gnd_net {VSS AVSS DVSS}
set init_lef_file {  /home/yingna/project/tsmcN40_1p9m/stdcell/TSMCHOME/digital/Back_End/lef/tcbn40lpbwp_120c/lef/HVH_0d5_0/tcbn40lpbwp_9lm6X2ZRDL.lef  /home/yingna/project/tsmcN40_1p9m/IO/tsmcN40_1p9m_IO/tpfn40lpgv2od3_130c/tpfn40lpgv2od3_120a_sefu9lm/TSMCHOME/digital/Back_End/lef/tpfn40lpgv2od3_120a/mt_2/9lm/lef/tpfn40lpgv2od3_9lm.lef  /home/yingna/project/tsmcN40_1p9m/IO/tsmcN40_1p9m_IO/tpan40lpgv2od3_130a/tpan40lpgv2od3_120a_sefn8lm/TSMCHOME/digital/Back_End/lef/tpan40lpgv2od3_120a/mt/8lm/lef/tpan40lpgv2od3_8lm.lef  /home/yingna/project/tsmcN40_1p9m/IO/tsmcN40_1p9m_IO/tphn40lpgv2od3_sl_270a/tphn40lpgv2od3_sl_210a_sefu9lm/TSMCHOME/digital/Back_End/lef/tphn40lpgv2od3_sl_210a/mt_2/9lm/lef/tphn40lpgv2od3_sl_9lm.lef  /home/yingna/project/tsmcN40_1p9m/IO/tsmcN40_1p9m_Bond/tpbn45v_140a_sefwb9m6x2z/TSMCHOME/digital/Back_End/lef/tpbn45v_140a/wb/9m/9M_6X2Z/lef/tpbn45v_9lm.lef  /home/yingna/project/tsmcN40_1p9m/IO/tsmcN40_1p9m_Bond/tpbn45v_140a_sefcup9m6x2z/TSMCHOME/digital/Back_End/lef/tpbn45v_140a/cup/9m/9M_6X2Z/lef/tpbn45v_9lm.lef  }
set init_mmmc_file enc_scripts/padframe/padframe_mmmc.view
set init_pwr_net {H_VDD HDVDD VDD AVDD }
set init_verilog ../syn/output/padframe/padframe_gate.v
set init_io_file ./enc_scripts/padframe/padframe.io
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
set report_inactive_arcs_format {from to when arc_type sense reason}
set soft_stack_size_limit 515
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
init_design
floorPlan -site core -b 0 0 710 3250 190 190 310 2850 400 400 410 410 -noSnapToGrid
setDesignMode -process 40
addIoFiller -cell {PFILLER20 PFILLER10 PFILLER5 PFILLER1} -prefix filler_top_digi -side left -from 190.0 -to 2965.0
addIoFiller -cell {PFILLER20A PFILLER10A PFILLER5A PFILLER1A} -prefix filler_top_ana -side left -from 2955.0 -to 3060.0
addIoFiller -cell {PFILLER20A PFILLER10A PFILLER5A PFILLER1A} -prefix filler_right_ana -side top
addIoFiller -cell {PFILLER20A PFILLER10A PFILLER5A PFILLER1A} -prefix filler_bot_ana -side right
addIoFiller -cell {PFILLER20 PFILLER10 PFILLER5 PFILLER1} -prefix filler_top_digi -side bottom -from 190.0 -to 275.0
addIoFiller -cell {PFILLER20A PFILLER10A PFILLER5A PFILLER1A} -prefix filler_top_ana -side bottom -from 305.0 -to 520.0
addInst PAD60NU -physical -inst CUP_io_tst_us_sel_2_2
placeInstance CUP_io_tst_us_sel_2_2 0 215.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_us_sel_2_1
placeInstance CUP_io_tst_us_sel_2_1 0 275.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_us_sel_2_0
placeInstance CUP_io_tst_us_sel_2_0 0 335.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_us_sel_1_3
placeInstance CUP_io_tst_us_sel_1_3 0 395.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_us_sel_1_2
placeInstance CUP_io_tst_us_sel_1_2 0 455.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_us_sel_1_1
placeInstance CUP_io_tst_us_sel_1_1 0 515.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_us_sel_1_0
placeInstance CUP_io_tst_us_sel_1_0 0 575.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_us_sel_0_3
placeInstance CUP_io_tst_us_sel_0_3 0 635.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_us_sel_0_2
placeInstance CUP_io_tst_us_sel_0_2 0 695.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_us_sel_0_1
placeInstance CUP_io_tst_us_sel_0_1 0 755.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_us_sel_0_0
placeInstance CUP_io_tst_us_sel_0_0 0 815.0 R270
addInst PAD60NU -physical -inst CUP_io_POC
placeInstance CUP_io_POC 0 875.0 R270
addInst PAD60NU -physical -inst CUP_io_HVDD0
placeInstance CUP_io_HVDD0 0 935.0 R270
addInst PAD60NU -physical -inst CUP_io_HVSS0
placeInstance CUP_io_HVSS0 0 995.0 R270
addInst PAD60NU -physical -inst CUP_io_HDVDD0
placeInstance CUP_io_HDVDD0 0 1055.0 R270
addInst PAD60NU -physical -inst CUP_io_HDVSS0
placeInstance CUP_io_HDVSS0 0 1115.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_clk
placeInstance CUP_io_tst_clk 0 1175.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_en_g
placeInstance CUP_io_tst_en_g 0 1235.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_wr_data_in_g
placeInstance CUP_io_tst_wr_data_in_g 0 1295.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_couple_en
placeInstance CUP_io_tst_couple_en 0 1355.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_rd_vld_g
placeInstance CUP_io_tst_rd_vld_g 0 1415.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_rd_data_out_g
placeInstance CUP_io_tst_rd_data_out_g 0 1475.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_p_out_vld_g
placeInstance CUP_io_tst_p_out_vld_g 0 1535.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_p_out_g
placeInstance CUP_io_tst_p_out_g 0 1595.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_p_en
placeInstance CUP_io_tst_p_en 0 1655.0 R270
addInst PAD60NU -physical -inst CUP_io_HVDD1
placeInstance CUP_io_HVDD1 0 1715.0 R270
addInst PAD60NU -physical -inst CUP_io_HVSS1
placeInstance CUP_io_HVSS1 0 1775.0 R270
addInst PAD60NU -physical -inst CUP_io_HDVDD1
placeInstance CUP_io_HDVDD1 0 1835.0 R270
addInst PAD60NU -physical -inst CUP_io_HDVSS1
placeInstance CUP_io_HDVSS1 0 1895.0 R270
addInst PAD60NU -physical -inst CUP_io_rstn
placeInstance CUP_io_rstn 0 1955.0 R270
addInst PAD60NU -physical -inst CUP_io_clk
placeInstance CUP_io_clk 0 2015.0 R270
addInst PAD60NU -physical -inst CUP_io_en_g
placeInstance CUP_io_en_g 0 2075.0 R270
addInst PAD60NU -physical -inst CUP_io_wr_data_in_g
placeInstance CUP_io_wr_data_in_g 0 2135.0 R270
addInst PAD60NU -physical -inst CUP_io_rd_data_out_g
placeInstance CUP_io_rd_data_out_g 0 2195.0 R270
addInst PAD60NU -physical -inst CUP_io_rd_vld_g
placeInstance CUP_io_rd_vld_g 0 2255.0 R270
addInst PAD60NU -physical -inst CUP_io_p_out_vld_g
placeInstance CUP_io_p_out_vld_g 0 2315.0 R270
addInst PAD60NU -physical -inst CUP_io_p_out_g
placeInstance CUP_io_p_out_g 0 2375.0 R270
addInst PAD60NU -physical -inst CUP_io_couple_en
placeInstance CUP_io_couple_en 0 2435.0 R270
addInst PAD60NU -physical -inst CUP_io_p_en
placeInstance CUP_io_p_en 0 2495.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_b2_ctrl_0
placeInstance CUP_io_tst_b2_ctrl_0 0 2555.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_b2_ctrl_1
placeInstance CUP_io_tst_b2_ctrl_1 0 2615.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_b2_ctrl_2
placeInstance CUP_io_tst_b2_ctrl_2 0 2675.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_b2_ctrl_3
placeInstance CUP_io_tst_b2_ctrl_3 0 2735.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_b2_ctrl_4
placeInstance CUP_io_tst_b2_ctrl_4 0 2795.0 R270
addInst PAD60NU -physical -inst CUP_io_tst_b2_ctrl_5
placeInstance CUP_io_tst_b2_ctrl_5 0 2855.0 R270
addInst PAD60NA -physical -inst CUP_io_HS_AVSS0
placeInstance CUP_io_HS_AVSS0 0 2955.0 R270
addInst PAD60NA -physical -inst CUP_io_HS_AVDD0
placeInstance CUP_io_HS_AVDD0 195.0 3169.51 R180
addInst PAD60NA -physical -inst CUP_io_HS_VSS0
placeInstance CUP_io_HS_VSS0 375.0 3169.51 R180
addInst PAD60NA -physical -inst CUP_io_HS_VDD0
placeInstance CUP_io_HS_VDD0 435.0 3169.51 R180
addInst PAD60NA -physical -inst CUP_io_tst_je_ro_1
placeInstance CUP_io_tst_je_ro_1 629.51 2895.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_je_ro_2
placeInstance CUP_io_tst_je_ro_2 629.51 2835.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_zq_ro_1
placeInstance CUP_io_tst_zq_ro_1 629.51 2775.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_zq_ro_2
placeInstance CUP_io_tst_zq_ro_2 629.51 2715.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_zq_ro_3
placeInstance CUP_io_tst_zq_ro_3 629.51 2655.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_ro_tst
placeInstance CUP_io_tst_ro_tst 629.51 2595.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_b3_f_0
placeInstance CUP_io_tst_b3_f_0 629.51 2535.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_b3_f_1
placeInstance CUP_io_tst_b3_f_1 629.51 2475.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_b3_f_2
placeInstance CUP_io_tst_b3_f_2 629.51 2415.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_b3_f_3
placeInstance CUP_io_tst_b3_f_3 629.51 2355.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_b3_f_4
placeInstance CUP_io_tst_b3_f_4 629.51 2295.0 R90
addInst PAD60NA -physical -inst CUP_io_VSS0
placeInstance CUP_io_VSS0 629.51 2235.0 R90
addInst PAD60NA -physical -inst CUP_io_VDD0
placeInstance CUP_io_VDD0 629.51 2175.0 R90
addInst PAD60NA -physical -inst CUP_io_p_mod
placeInstance CUP_io_p_mod 629.51 2115.0 R90
addInst PAD60NA -physical -inst CUP_io_p_ota_vb
placeInstance CUP_io_p_ota_vb 629.51 2055.0 R90
addInst PAD60NA -physical -inst CUP_io_b3_cvb
placeInstance CUP_io_b3_cvb 629.51 1995.0 R90
addInst PAD60NA -physical -inst CUP_io_sabil_bk
placeInstance CUP_io_sabil_bk 629.51 1935.0 R90
addInst PAD60NA -physical -inst CUP_io_HS_AVSS1
placeInstance CUP_io_HS_AVSS1 629.51 1815.0 R90
addInst PAD60NA -physical -inst CUP_io_HS_AVDD1
placeInstance CUP_io_HS_AVDD1 629.51 1755.0 R90
addInst PAD60NA -physical -inst CUP_io_HS_VSS1
placeInstance CUP_io_HS_VSS1 629.51 1635.0 R90
addInst PAD60NA -physical -inst CUP_io_HS_VDD1
placeInstance CUP_io_HS_VDD1 629.51 1575.0 R90
addInst PAD60NA -physical -inst CUP_io_cp_sel
placeInstance CUP_io_cp_sel 629.51 1515.0 R90
addInst PAD60NA -physical -inst CUP_io_b2_cvb2
placeInstance CUP_io_b2_cvb2 629.51 1455.0 R90
addInst PAD60NA -physical -inst CUP_io_b2_cvb1
placeInstance CUP_io_b2_cvb1 629.51 1395.0 R90
addInst PAD60NA -physical -inst CUP_io_osc_vb
placeInstance CUP_io_osc_vb 629.51 1335.0 R90
addInst PAD60NA -physical -inst CUP_io_VSS1
placeInstance CUP_io_VSS1 629.51 1275.0 R90
addInst PAD60NA -physical -inst CUP_io_VDD1
placeInstance CUP_io_VDD1 629.51 1215.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_p_ota_vb
placeInstance CUP_io_tst_p_ota_vb 629.51 1155.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_cp_sel
placeInstance CUP_io_tst_cp_sel 629.51 1095.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_p_mod
placeInstance CUP_io_tst_p_mod 629.51 1035.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_b3_cvb
placeInstance CUP_io_tst_b3_cvb 629.51 975.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_b2_cvb2
placeInstance CUP_io_tst_b2_cvb2 629.51 915.0 R90
addInst PAD60NA -physical -inst CUP_io_VSS2
placeInstance CUP_io_VSS2 629.51 855.0 R90
addInst PAD60NA -physical -inst CUP_io_VDD2
placeInstance CUP_io_VDD2 629.51 795.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_b2_cvb1
placeInstance CUP_io_tst_b2_cvb1 629.51 735.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_osc_vb
placeInstance CUP_io_tst_osc_vb 629.51 675.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_us_ro_0
placeInstance CUP_io_tst_us_ro_0 629.51 615.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_us_ro_1
placeInstance CUP_io_tst_us_ro_1 629.51 555.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_us_ro_2
placeInstance CUP_io_tst_us_ro_2 629.51 495.0 R90
addInst PAD60NA -physical -inst CUP_io_tst_sabil_bk
placeInstance CUP_io_tst_sabil_bk 629.51 435.0 R90
addInst PAD60NA -physical -inst CUP_io_HS_AVSS2
placeInstance CUP_io_HS_AVSS2 629.51 255.0 R90
addInst PAD60NA -physical -inst CUP_io_HS_AVDD2
placeInstance CUP_io_HS_AVDD2 629.51 195.0 R90
addInst PAD60NA -physical -inst CUP_io_HS_VSS2
placeInstance CUP_io_HS_VSS2 365.0 0.0 R0
addInst PAD60NA -physical -inst CUP_io_HS_VDD2
placeInstance CUP_io_HS_VDD2 305.0 0.0 R0
addInst PAD60NU -physical -inst CUP_io_tst_us_sel_2_3
placeInstance CUP_io_tst_us_sel_2_3 205.0 0.0 R0
verify_drc -limit 100000
verifyConnectivity -error 100000
saveDesign ./output/padframe/padframe_enc.enc
saveNetlist ./output/padframe/padframe_enc.v
saveNetlist -phys -excludeLeafCell -excludeCellInst {FILL64BWP FILL32BWP FILL16BWP FILL8BWP FILL4BWP FILL3BWP FILL2BWP FILL1BWP PFILLER20 PFILLER10 PFILLER5 PFILLER1 PFILLER20A PFILLER10A PFILLER5A PFILLER1A PAD60NA PAD60NU PAD60NAU PAD60GAU PAD60NU PAD60GU PRCUTA PCORNER PCORNERA} output/padframe/padframe_enc_lvs.v
saveNetlist -phys ./output/padframe/padframe_digital_enc_all.v
streamOut output/padframe/padframe_enc.gds -mapFile ./gdsmap/gdsout_6X2Z.map -libName padframe -structureName padframe -units 20000 -mode ALL
zoomBox -153.04250 3094.05750 413.99600 2778.48850
fit
