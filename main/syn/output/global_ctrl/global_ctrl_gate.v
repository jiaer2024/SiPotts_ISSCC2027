/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP1
// Date      : Tue Apr 28 16:37:53 2026
/////////////////////////////////////////////////////////////


module global_ctrl ( clk, rstn, p_en, en_g, wr_data_in_g, rd_vld_bus, 
        rd_data_out_bus, p_out_vld_bus, p_out_bus, couple_en, wr_data_in_g_d2, 
        rd_vld_g, rd_data_out_g, wr_vld_bus, rd_rdy_bus, p_code_vld_bus, 
        p_out_vld_g, p_out_g );
  input [7:0] rd_vld_bus;
  input [7:0] rd_data_out_bus;
  input [7:0] p_out_vld_bus;
  input [7:0] p_out_bus;
  output [7:0] wr_vld_bus;
  output [7:0] rd_rdy_bus;
  output [7:0] p_code_vld_bus;
  input clk, rstn, p_en, en_g, wr_data_in_g;
  output couple_en, wr_data_in_g_d2, rd_vld_g, rd_data_out_g, p_out_vld_g,
         p_out_g;
  wire   n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, en_g_d1,
         wr_data_in_g_d1, p_en_d1, p_en_d2, n72, n73, n74, n75, n76, n77, n78,
         n79, n800, n810, n820, n880, n890, n900, ul_cur_state_d1_0_, n93,
         n960, dl_cur_state, dl_next_state, n127, n1280, n129, n1300, n131,
         n1320, n133, n1340, n135, n1360, n137, n1380, n139, n1400, n141,
         dl_cur_state_d1, dl_cur_state_d2, n1440, n1460, n147, n1480, n149,
         n1500, n1510, n1520, n1530, n1540, n1550, n1560, n1570, n1580, n1590,
         n1600, n1610, n1620, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n92, n94, n96, n98, n100, n102, n104, n106, n108, n110, n112,
         n114, n116, n118, n120, n122, n124, n126, n128, n130, n132, n134,
         n136, n138, n140, n142, n144, n146, n148, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258;
  wire   [1:0] ul_cur_state;
  wire   [10:0] col_id;
  wire   [2:0] row_id;
  wire   [2:0] rd_row_id;
  wire   [2:0] rd_row_id_d1;
  wire   [6:0] phase_col_id;
  wire   [2:0] phase_row_id;
  wire   [2:0] phase_row_id_d1;
  wire   [2:0] phase_row_id_d2;

  DFCNQD1BWP en_g_d1_reg ( .D(en_g), .CP(clk), .CDN(rstn), .Q(en_g_d1) );
  DFCNQD1BWP wr_data_in_g_d1_reg ( .D(wr_data_in_g), .CP(clk), .CDN(rstn), .Q(
        wr_data_in_g_d1) );
  DFCNQD1BWP p_en_d1_reg ( .D(p_en), .CP(clk), .CDN(rstn), .Q(p_en_d1) );
  DFCNQD1BWP p_en_d2_reg ( .D(p_en_d1), .CP(clk), .CDN(rstn), .Q(p_en_d2) );
  DFCNQD1BWP col_id_reg_0_ ( .D(n72), .CP(clk), .CDN(rstn), .Q(col_id[0]) );
  DFCNQD1BWP ul_cur_state_reg_1_ ( .D(n85), .CP(clk), .CDN(rstn), .Q(
        ul_cur_state[1]) );
  DFCNQD1BWP ul_cur_state_reg_0_ ( .D(n86), .CP(clk), .CDN(rstn), .Q(
        ul_cur_state[0]) );
  DFCNQD1BWP col_id_reg_1_ ( .D(n73), .CP(clk), .CDN(rstn), .Q(col_id[1]) );
  DFCNQD1BWP col_id_reg_2_ ( .D(n74), .CP(clk), .CDN(rstn), .Q(col_id[2]) );
  DFCNQD1BWP col_id_reg_3_ ( .D(n75), .CP(clk), .CDN(rstn), .Q(col_id[3]) );
  DFCNQD1BWP col_id_reg_4_ ( .D(n76), .CP(clk), .CDN(rstn), .Q(col_id[4]) );
  DFCNQD1BWP col_id_reg_5_ ( .D(n77), .CP(clk), .CDN(rstn), .Q(col_id[5]) );
  DFCNQD1BWP col_id_reg_6_ ( .D(n78), .CP(clk), .CDN(rstn), .Q(col_id[6]) );
  DFCNQD1BWP col_id_reg_7_ ( .D(n79), .CP(clk), .CDN(rstn), .Q(col_id[7]) );
  DFCNQD1BWP col_id_reg_8_ ( .D(n800), .CP(clk), .CDN(rstn), .Q(col_id[8]) );
  DFCNQD1BWP col_id_reg_9_ ( .D(n810), .CP(clk), .CDN(rstn), .Q(col_id[9]) );
  DFCNQD1BWP col_id_reg_10_ ( .D(n820), .CP(clk), .CDN(rstn), .Q(col_id[10])
         );
  DFCNQD1BWP row_id_reg_0_ ( .D(n89), .CP(clk), .CDN(rstn), .Q(row_id[0]) );
  DFCNQD1BWP row_id_reg_1_ ( .D(n88), .CP(clk), .CDN(rstn), .Q(row_id[1]) );
  DFCNQD1BWP row_id_reg_2_ ( .D(n87), .CP(clk), .CDN(rstn), .Q(row_id[2]) );
  DFCNQD1BWP rd_row_id_reg_2_ ( .D(n900), .CP(clk), .CDN(rstn), .Q(
        rd_row_id[2]) );
  DFCNQD1BWP rd_row_id_reg_1_ ( .D(n890), .CP(clk), .CDN(rstn), .Q(
        rd_row_id[1]) );
  DFCNQD1BWP rd_row_id_reg_0_ ( .D(n880), .CP(clk), .CDN(rstn), .Q(
        rd_row_id[0]) );
  DFCNQD1BWP rd_row_id_d1_reg_2_ ( .D(rd_row_id[2]), .CP(clk), .CDN(rstn), .Q(
        rd_row_id_d1[2]) );
  DFCNQD1BWP rd_row_id_d1_reg_1_ ( .D(rd_row_id[1]), .CP(clk), .CDN(rstn), .Q(
        rd_row_id_d1[1]) );
  DFCNQD1BWP rd_row_id_d1_reg_0_ ( .D(rd_row_id[0]), .CP(clk), .CDN(rstn), .Q(
        rd_row_id_d1[0]) );
  DFCNQD1BWP phase_col_id_reg_0_ ( .D(n127), .CP(clk), .CDN(rstn), .Q(
        phase_col_id[0]) );
  DFCNQD1BWP dl_cur_state_reg ( .D(dl_next_state), .CP(clk), .CDN(rstn), .Q(
        dl_cur_state) );
  DFCNQD1BWP phase_col_id_reg_1_ ( .D(n1280), .CP(clk), .CDN(rstn), .Q(
        phase_col_id[1]) );
  DFCNQD1BWP phase_col_id_reg_2_ ( .D(n129), .CP(clk), .CDN(rstn), .Q(
        phase_col_id[2]) );
  DFCNQD1BWP phase_col_id_reg_3_ ( .D(n1300), .CP(clk), .CDN(rstn), .Q(
        phase_col_id[3]) );
  DFCNQD1BWP phase_col_id_reg_4_ ( .D(n131), .CP(clk), .CDN(rstn), .Q(
        phase_col_id[4]) );
  DFCNQD1BWP phase_col_id_reg_5_ ( .D(n1320), .CP(clk), .CDN(rstn), .Q(
        phase_col_id[5]) );
  DFCNQD1BWP phase_col_id_reg_6_ ( .D(n133), .CP(clk), .CDN(rstn), .Q(
        phase_col_id[6]) );
  DFCNQD1BWP phase_row_id_reg_0_ ( .D(n83), .CP(clk), .CDN(rstn), .Q(
        phase_row_id[0]) );
  DFCNQD1BWP phase_row_id_reg_1_ ( .D(n82), .CP(clk), .CDN(rstn), .Q(
        phase_row_id[1]) );
  DFCNQD1BWP phase_row_id_reg_2_ ( .D(n81), .CP(clk), .CDN(rstn), .Q(
        phase_row_id[2]) );
  DFCNQD1BWP dl_cur_state_d1_reg ( .D(dl_cur_state), .CP(clk), .CDN(rstn), .Q(
        dl_cur_state_d1) );
  DFCNQD1BWP dl_cur_state_d2_reg ( .D(dl_cur_state_d1), .CP(clk), .CDN(rstn), 
        .Q(dl_cur_state_d2) );
  DFCNQD1BWP phase_row_id_d1_reg_2_ ( .D(phase_row_id[2]), .CP(clk), .CDN(rstn), .Q(phase_row_id_d1[2]) );
  DFCNQD1BWP phase_row_id_d2_reg_2_ ( .D(phase_row_id_d1[2]), .CP(clk), .CDN(
        rstn), .Q(phase_row_id_d2[2]) );
  DFCNQD1BWP phase_row_id_d1_reg_1_ ( .D(phase_row_id[1]), .CP(clk), .CDN(rstn), .Q(phase_row_id_d1[1]) );
  DFCNQD1BWP phase_row_id_d2_reg_1_ ( .D(phase_row_id_d1[1]), .CP(clk), .CDN(
        rstn), .Q(phase_row_id_d2[1]) );
  DFCNQD1BWP phase_row_id_d1_reg_0_ ( .D(phase_row_id[0]), .CP(clk), .CDN(rstn), .Q(phase_row_id_d1[0]) );
  DFCNQD1BWP phase_row_id_d2_reg_0_ ( .D(phase_row_id_d1[0]), .CP(clk), .CDN(
        rstn), .Q(phase_row_id_d2[0]) );
  DFCNQD1BWP ul_cur_state_d1_reg_0_ ( .D(n80), .CP(clk), .CDN(rstn), .Q(
        ul_cur_state_d1_0_) );
  DFCNQD1BWP wr_data_in_g_d2_reg ( .D(wr_data_in_g_d1), .CP(clk), .CDN(rstn), 
        .Q(n260) );
  DFCNQD1BWP rd_data_out_g_reg ( .D(n960), .CP(clk), .CDN(rstn), .Q(n262) );
  DFCNQD1BWP rd_vld_g_reg ( .D(n93), .CP(clk), .CDN(rstn), .Q(n261) );
  DFCNQD1BWP p_code_vld_bus_reg_7_ ( .D(n141), .CP(clk), .CDN(rstn), .Q(n279)
         );
  DFCNQD1BWP p_code_vld_bus_reg_6_ ( .D(n1400), .CP(clk), .CDN(rstn), .Q(n280)
         );
  DFCNQD1BWP p_code_vld_bus_reg_5_ ( .D(n139), .CP(clk), .CDN(rstn), .Q(n281)
         );
  DFCNQD1BWP p_code_vld_bus_reg_4_ ( .D(n1380), .CP(clk), .CDN(rstn), .Q(n282)
         );
  DFCNQD1BWP p_code_vld_bus_reg_3_ ( .D(n137), .CP(clk), .CDN(rstn), .Q(n283)
         );
  DFCNQD1BWP p_code_vld_bus_reg_2_ ( .D(n1360), .CP(clk), .CDN(rstn), .Q(n284)
         );
  DFCNQD1BWP p_code_vld_bus_reg_1_ ( .D(n135), .CP(clk), .CDN(rstn), .Q(n285)
         );
  DFCNQD1BWP p_code_vld_bus_reg_0_ ( .D(n1340), .CP(clk), .CDN(rstn), .Q(n286)
         );
  DFCNQD1BWP p_out_g_reg ( .D(n1460), .CP(clk), .CDN(rstn), .Q(n288) );
  DFCNQD1BWP p_out_vld_g_reg ( .D(n1440), .CP(clk), .CDN(rstn), .Q(n287) );
  DFCNQD1BWP wr_vld_bus_reg_7_ ( .D(n1610), .CP(clk), .CDN(rstn), .Q(n263) );
  DFCNQD1BWP wr_vld_bus_reg_6_ ( .D(n1590), .CP(clk), .CDN(rstn), .Q(n264) );
  DFCNQD1BWP wr_vld_bus_reg_5_ ( .D(n1570), .CP(clk), .CDN(rstn), .Q(n265) );
  DFCNQD1BWP wr_vld_bus_reg_4_ ( .D(n1550), .CP(clk), .CDN(rstn), .Q(n266) );
  DFCNQD1BWP wr_vld_bus_reg_3_ ( .D(n1530), .CP(clk), .CDN(rstn), .Q(n267) );
  DFCNQD1BWP wr_vld_bus_reg_2_ ( .D(n1510), .CP(clk), .CDN(rstn), .Q(n268) );
  DFCNQD1BWP wr_vld_bus_reg_1_ ( .D(n149), .CP(clk), .CDN(rstn), .Q(n269) );
  DFCNQD1BWP wr_vld_bus_reg_0_ ( .D(n147), .CP(clk), .CDN(rstn), .Q(n270) );
  DFCNQD1BWP rd_rdy_bus_reg_7_ ( .D(n1620), .CP(clk), .CDN(rstn), .Q(n271) );
  DFCNQD1BWP rd_rdy_bus_reg_6_ ( .D(n1600), .CP(clk), .CDN(rstn), .Q(n272) );
  DFCNQD1BWP rd_rdy_bus_reg_5_ ( .D(n1580), .CP(clk), .CDN(rstn), .Q(n273) );
  DFCNQD1BWP rd_rdy_bus_reg_4_ ( .D(n1560), .CP(clk), .CDN(rstn), .Q(n274) );
  DFCNQD1BWP rd_rdy_bus_reg_3_ ( .D(n1540), .CP(clk), .CDN(rstn), .Q(n275) );
  DFCNQD1BWP rd_rdy_bus_reg_2_ ( .D(n1520), .CP(clk), .CDN(rstn), .Q(n276) );
  DFCNQD1BWP rd_rdy_bus_reg_1_ ( .D(n1500), .CP(clk), .CDN(rstn), .Q(n277) );
  DFCNQD1BWP rd_rdy_bus_reg_0_ ( .D(n1480), .CP(clk), .CDN(rstn), .Q(n278) );
  DFCNQD1BWP couple_en_reg ( .D(n84), .CP(clk), .CDN(rstn), .Q(n259) );
  IND2D0BWP U142 ( .A1(couple_en), .B1(n253), .ZN(n84) );
  INVD0BWP U143 ( .I(n260), .ZN(n90) );
  CKND6BWP U144 ( .I(n90), .ZN(wr_data_in_g_d2) );
  INVD0BWP U145 ( .I(n262), .ZN(n92) );
  CKND6BWP U146 ( .I(n92), .ZN(rd_data_out_g) );
  INVD0BWP U147 ( .I(n261), .ZN(n94) );
  CKND6BWP U148 ( .I(n94), .ZN(rd_vld_g) );
  INVD0BWP U149 ( .I(n279), .ZN(n96) );
  CKND6BWP U150 ( .I(n96), .ZN(p_code_vld_bus[7]) );
  INVD0BWP U151 ( .I(n280), .ZN(n98) );
  CKND6BWP U152 ( .I(n98), .ZN(p_code_vld_bus[6]) );
  INVD0BWP U153 ( .I(n281), .ZN(n100) );
  CKND6BWP U154 ( .I(n100), .ZN(p_code_vld_bus[5]) );
  INVD0BWP U155 ( .I(n282), .ZN(n102) );
  CKND6BWP U156 ( .I(n102), .ZN(p_code_vld_bus[4]) );
  INVD0BWP U157 ( .I(n283), .ZN(n104) );
  CKND6BWP U158 ( .I(n104), .ZN(p_code_vld_bus[3]) );
  INVD0BWP U159 ( .I(n284), .ZN(n106) );
  CKND6BWP U160 ( .I(n106), .ZN(p_code_vld_bus[2]) );
  INVD0BWP U161 ( .I(n285), .ZN(n108) );
  CKND6BWP U162 ( .I(n108), .ZN(p_code_vld_bus[1]) );
  INVD0BWP U163 ( .I(n286), .ZN(n110) );
  CKND6BWP U164 ( .I(n110), .ZN(p_code_vld_bus[0]) );
  INVD0BWP U165 ( .I(n288), .ZN(n112) );
  CKND6BWP U166 ( .I(n112), .ZN(p_out_g) );
  INVD0BWP U167 ( .I(n287), .ZN(n114) );
  CKND6BWP U168 ( .I(n114), .ZN(p_out_vld_g) );
  INVD0BWP U169 ( .I(n263), .ZN(n116) );
  CKND6BWP U170 ( .I(n116), .ZN(wr_vld_bus[7]) );
  INVD0BWP U171 ( .I(n264), .ZN(n118) );
  CKND6BWP U172 ( .I(n118), .ZN(wr_vld_bus[6]) );
  INVD0BWP U173 ( .I(n265), .ZN(n120) );
  CKND6BWP U174 ( .I(n120), .ZN(wr_vld_bus[5]) );
  INVD0BWP U175 ( .I(n266), .ZN(n122) );
  CKND6BWP U176 ( .I(n122), .ZN(wr_vld_bus[4]) );
  INVD0BWP U177 ( .I(n267), .ZN(n124) );
  CKND6BWP U178 ( .I(n124), .ZN(wr_vld_bus[3]) );
  INVD0BWP U179 ( .I(n268), .ZN(n126) );
  CKND6BWP U180 ( .I(n126), .ZN(wr_vld_bus[2]) );
  INVD0BWP U181 ( .I(n269), .ZN(n128) );
  CKND6BWP U182 ( .I(n128), .ZN(wr_vld_bus[1]) );
  INVD0BWP U183 ( .I(n270), .ZN(n130) );
  CKND6BWP U184 ( .I(n130), .ZN(wr_vld_bus[0]) );
  INVD0BWP U185 ( .I(n271), .ZN(n132) );
  CKND6BWP U186 ( .I(n132), .ZN(rd_rdy_bus[7]) );
  INVD0BWP U187 ( .I(n272), .ZN(n134) );
  CKND6BWP U188 ( .I(n134), .ZN(rd_rdy_bus[6]) );
  INVD0BWP U189 ( .I(n273), .ZN(n136) );
  CKND6BWP U190 ( .I(n136), .ZN(rd_rdy_bus[5]) );
  INVD0BWP U191 ( .I(n274), .ZN(n138) );
  CKND6BWP U192 ( .I(n138), .ZN(rd_rdy_bus[4]) );
  INVD0BWP U193 ( .I(n275), .ZN(n140) );
  CKND6BWP U194 ( .I(n140), .ZN(rd_rdy_bus[3]) );
  INVD0BWP U195 ( .I(n276), .ZN(n142) );
  CKND6BWP U196 ( .I(n142), .ZN(rd_rdy_bus[2]) );
  INVD0BWP U197 ( .I(n277), .ZN(n144) );
  CKND6BWP U198 ( .I(n144), .ZN(rd_rdy_bus[1]) );
  INVD0BWP U199 ( .I(n278), .ZN(n146) );
  CKND6BWP U200 ( .I(n146), .ZN(rd_rdy_bus[0]) );
  INVD0BWP U201 ( .I(n259), .ZN(n148) );
  CKND6BWP U202 ( .I(n148), .ZN(couple_en) );
  INVD0BWP U203 ( .I(col_id[5]), .ZN(n187) );
  TIEHBWP U204 ( .Z(n80) );
  CKND2D0BWP U205 ( .A1(phase_row_id[0]), .A2(dl_cur_state), .ZN(n153) );
  INVD0BWP U206 ( .I(phase_row_id[1]), .ZN(n257) );
  NR3D0BWP U207 ( .A1(n153), .A2(phase_row_id[2]), .A3(n257), .ZN(n137) );
  INVD0BWP U208 ( .I(phase_row_id[0]), .ZN(n176) );
  INVD0BWP U209 ( .I(phase_col_id[0]), .ZN(n160) );
  NR4D0BWP U210 ( .A1(phase_col_id[1]), .A2(phase_col_id[2]), .A3(
        phase_col_id[5]), .A4(n160), .ZN(n150) );
  ND4D0BWP U211 ( .A1(phase_col_id[4]), .A2(phase_col_id[3]), .A3(
        phase_col_id[6]), .A4(n150), .ZN(n151) );
  CKND2D0BWP U212 ( .A1(phase_row_id[2]), .A2(phase_row_id[1]), .ZN(n152) );
  OAI31D0BWP U213 ( .A1(n176), .A2(n151), .A3(n152), .B(dl_cur_state), .ZN(
        n164) );
  INVD0BWP U214 ( .I(phase_row_id[2]), .ZN(n154) );
  CKND2D0BWP U215 ( .A1(dl_cur_state), .A2(n151), .ZN(n169) );
  MOAI22D0BWP U216 ( .A1(n164), .A2(n154), .B1(n137), .B2(n169), .ZN(n81) );
  CKND2D0BWP U217 ( .A1(ul_cur_state[0]), .A2(ul_cur_state[1]), .ZN(n253) );
  INVD0BWP U218 ( .I(row_id[2]), .ZN(n200) );
  NR2D0BWP U219 ( .A1(n253), .A2(n200), .ZN(n900) );
  INVD0BWP U220 ( .I(dl_cur_state), .ZN(n163) );
  NR2D0BWP U221 ( .A1(n163), .A2(phase_col_id[0]), .ZN(n127) );
  INVD0BWP U222 ( .I(ul_cur_state[0]), .ZN(n194) );
  NR2D0BWP U223 ( .A1(n194), .A2(col_id[0]), .ZN(n72) );
  NR2D0BWP U224 ( .A1(n152), .A2(n153), .ZN(n141) );
  NR2D0BWP U225 ( .A1(n163), .A2(phase_row_id[0]), .ZN(n175) );
  INVD0BWP U226 ( .I(n175), .ZN(n258) );
  NR2D0BWP U227 ( .A1(n152), .A2(n258), .ZN(n1400) );
  OR2D0BWP U228 ( .A1(n153), .A2(phase_row_id[1]), .Z(n179) );
  NR2D0BWP U229 ( .A1(n179), .A2(phase_row_id[2]), .ZN(n135) );
  NR2D0BWP U230 ( .A1(n154), .A2(n179), .ZN(n139) );
  CKND2D0BWP U231 ( .A1(n175), .A2(n257), .ZN(n155) );
  NR2D0BWP U232 ( .A1(n155), .A2(phase_row_id[2]), .ZN(n1340) );
  NR2D0BWP U233 ( .A1(n155), .A2(n154), .ZN(n1380) );
  NR2D0BWP U234 ( .A1(n194), .A2(ul_cur_state[1]), .ZN(n157) );
  CKND2D0BWP U235 ( .A1(n157), .A2(n200), .ZN(n254) );
  CKND2D0BWP U236 ( .A1(row_id[1]), .A2(row_id[0]), .ZN(n201) );
  NR2D0BWP U237 ( .A1(n254), .A2(n201), .ZN(n1530) );
  INVD0BWP U238 ( .I(row_id[0]), .ZN(n190) );
  INVD0BWP U239 ( .I(row_id[1]), .ZN(n256) );
  CKND2D0BWP U240 ( .A1(n190), .A2(n256), .ZN(n252) );
  NR2D0BWP U241 ( .A1(n254), .A2(n252), .ZN(n147) );
  CKND2D0BWP U242 ( .A1(row_id[0]), .A2(n256), .ZN(n192) );
  NR2D0BWP U243 ( .A1(n254), .A2(n192), .ZN(n149) );
  INVD0BWP U244 ( .I(n900), .ZN(n156) );
  NR2D0BWP U245 ( .A1(n156), .A2(n192), .ZN(n1580) );
  NR2D0BWP U246 ( .A1(n156), .A2(n252), .ZN(n1560) );
  CKND2D0BWP U247 ( .A1(row_id[2]), .A2(n157), .ZN(n255) );
  NR2D0BWP U248 ( .A1(n255), .A2(n201), .ZN(n1610) );
  NR2D0BWP U249 ( .A1(n255), .A2(n252), .ZN(n1550) );
  NR2D0BWP U250 ( .A1(n255), .A2(n192), .ZN(n1570) );
  NR2D0BWP U251 ( .A1(n253), .A2(n190), .ZN(n880) );
  AN3D0BWP U252 ( .A1(n880), .A2(n256), .A3(n200), .Z(n1500) );
  NR2D0BWP U253 ( .A1(n253), .A2(n256), .ZN(n890) );
  CKND2D0BWP U254 ( .A1(n890), .A2(n200), .ZN(n158) );
  NR2D0BWP U255 ( .A1(n158), .A2(n190), .ZN(n1540) );
  NR2D0BWP U256 ( .A1(n158), .A2(row_id[0]), .ZN(n1520) );
  CKND2D0BWP U257 ( .A1(row_id[2]), .A2(n890), .ZN(n159) );
  NR2D0BWP U258 ( .A1(n159), .A2(row_id[0]), .ZN(n1600) );
  NR2D0BWP U259 ( .A1(n159), .A2(n190), .ZN(n1620) );
  INVD0BWP U260 ( .I(phase_col_id[1]), .ZN(n161) );
  NR2D0BWP U261 ( .A1(n160), .A2(n161), .ZN(n168) );
  AOI211D0BWP U262 ( .A1(n161), .A2(n160), .B(n168), .C(n169), .ZN(n1280) );
  INVD0BWP U263 ( .I(phase_col_id[3]), .ZN(n162) );
  CKND2D0BWP U264 ( .A1(phase_col_id[2]), .A2(n168), .ZN(n167) );
  NR2D0BWP U265 ( .A1(n167), .A2(n162), .ZN(n166) );
  AOI211D0BWP U266 ( .A1(n162), .A2(n167), .B(n166), .C(n169), .ZN(n1300) );
  CKND2D0BWP U267 ( .A1(p_en_d2), .A2(n163), .ZN(n165) );
  OAI21D0BWP U268 ( .A1(p_en_d1), .A2(n165), .B(n164), .ZN(dl_next_state) );
  INVD0BWP U269 ( .I(n169), .ZN(n197) );
  CKND2D0BWP U270 ( .A1(phase_col_id[4]), .A2(n166), .ZN(n170) );
  OA211D0BWP U271 ( .A1(phase_col_id[4]), .A2(n166), .B(n197), .C(n170), .Z(
        n131) );
  OA211D0BWP U272 ( .A1(phase_col_id[2]), .A2(n168), .B(n197), .C(n167), .Z(
        n129) );
  INVD0BWP U273 ( .I(phase_col_id[5]), .ZN(n171) );
  NR2D0BWP U274 ( .A1(n170), .A2(n171), .ZN(n199) );
  AOI211D0BWP U275 ( .A1(n171), .A2(n170), .B(n199), .C(n169), .ZN(n1320) );
  INVD0BWP U276 ( .I(col_id[0]), .ZN(n181) );
  INVD0BWP U277 ( .I(col_id[1]), .ZN(n182) );
  NR2D0BWP U278 ( .A1(n181), .A2(n182), .ZN(n180) );
  NR4D0BWP U279 ( .A1(col_id[2]), .A2(col_id[4]), .A3(col_id[7]), .A4(n181), 
        .ZN(n174) );
  NR2D0BWP U280 ( .A1(col_id[3]), .A2(col_id[1]), .ZN(n172) );
  AN4D0BWP U281 ( .A1(col_id[5]), .A2(col_id[6]), .A3(col_id[9]), .A4(n172), 
        .Z(n173) );
  AN4D0BWP U282 ( .A1(col_id[8]), .A2(col_id[10]), .A3(n174), .A4(n173), .Z(
        n191) );
  NR2D0BWP U283 ( .A1(n194), .A2(n191), .ZN(n209) );
  CKND2D0BWP U284 ( .A1(col_id[2]), .A2(n180), .ZN(n184) );
  OA211D0BWP U285 ( .A1(col_id[2]), .A2(n180), .B(n209), .C(n184), .Z(n74) );
  INVD0BWP U286 ( .I(col_id[3]), .ZN(n185) );
  NR2D0BWP U287 ( .A1(n184), .A2(n185), .ZN(n183) );
  CKND2D0BWP U288 ( .A1(col_id[4]), .A2(n183), .ZN(n186) );
  OA211D0BWP U289 ( .A1(col_id[4]), .A2(n183), .B(n209), .C(n186), .Z(n76) );
  NR2D0BWP U290 ( .A1(n197), .A2(n175), .ZN(n178) );
  AOI21D0BWP U291 ( .A1(n197), .A2(n176), .B(n178), .ZN(n83) );
  INVD0BWP U292 ( .I(ul_cur_state[1]), .ZN(n188) );
  OAI21D0BWP U293 ( .A1(ul_cur_state[0]), .A2(en_g_d1), .B(n188), .ZN(n177) );
  IND3D0BWP U294 ( .A1(n201), .B1(n191), .B2(row_id[2]), .ZN(n189) );
  CKND2D0BWP U295 ( .A1(ul_cur_state[0]), .A2(n189), .ZN(n202) );
  CKND2D0BWP U296 ( .A1(n177), .A2(n202), .ZN(n86) );
  OAI22D0BWP U297 ( .A1(n197), .A2(n179), .B1(n178), .B2(n257), .ZN(n82) );
  INVD0BWP U298 ( .I(n209), .ZN(n206) );
  AOI211D0BWP U299 ( .A1(n182), .A2(n181), .B(n180), .C(n206), .ZN(n73) );
  AOI211D0BWP U300 ( .A1(n185), .A2(n184), .B(n183), .C(n206), .ZN(n75) );
  NR2D0BWP U301 ( .A1(n186), .A2(n187), .ZN(n196) );
  AOI211D0BWP U302 ( .A1(n187), .A2(n186), .B(n196), .C(n206), .ZN(n77) );
  AOI21D0BWP U303 ( .A1(n189), .A2(n188), .B(n194), .ZN(n85) );
  AOI21D0BWP U304 ( .A1(ul_cur_state[0]), .A2(n190), .B(n209), .ZN(n195) );
  AOI21D0BWP U305 ( .A1(n209), .A2(n190), .B(n195), .ZN(n89) );
  IND2D0BWP U306 ( .A1(n192), .B1(n191), .ZN(n193) );
  OAI22D0BWP U307 ( .A1(n195), .A2(n256), .B1(n194), .B2(n193), .ZN(n88) );
  CKND2D0BWP U308 ( .A1(col_id[6]), .A2(n196), .ZN(n203) );
  OA211D0BWP U309 ( .A1(col_id[6]), .A2(n196), .B(n209), .C(n203), .Z(n78) );
  OAI21D0BWP U310 ( .A1(phase_col_id[6]), .A2(n199), .B(n197), .ZN(n198) );
  AOI21D0BWP U311 ( .A1(phase_col_id[6]), .A2(n199), .B(n198), .ZN(n133) );
  OAI32D0BWP U312 ( .A1(n202), .A2(n209), .A3(n201), .B1(n200), .B2(n202), 
        .ZN(n87) );
  INVD0BWP U313 ( .I(col_id[7]), .ZN(n204) );
  NR2D0BWP U314 ( .A1(n203), .A2(n204), .ZN(n205) );
  AOI211D0BWP U315 ( .A1(n204), .A2(n203), .B(n205), .C(n206), .ZN(n79) );
  CKND2D0BWP U316 ( .A1(col_id[8]), .A2(n205), .ZN(n207) );
  OA211D0BWP U317 ( .A1(col_id[8]), .A2(n205), .B(n209), .C(n207), .Z(n800) );
  INVD0BWP U318 ( .I(col_id[9]), .ZN(n208) );
  NR2D0BWP U319 ( .A1(n207), .A2(n208), .ZN(n211) );
  AOI211D0BWP U320 ( .A1(n208), .A2(n207), .B(n211), .C(n206), .ZN(n810) );
  OAI21D0BWP U321 ( .A1(col_id[10]), .A2(n211), .B(n209), .ZN(n210) );
  AOI21D0BWP U322 ( .A1(col_id[10]), .A2(n211), .B(n210), .ZN(n820) );
  INVD0BWP U323 ( .I(rd_row_id_d1[1]), .ZN(n213) );
  NR2D0BWP U324 ( .A1(n213), .A2(rd_row_id_d1[2]), .ZN(n221) );
  AOI21D0BWP U325 ( .A1(n221), .A2(rd_data_out_bus[2]), .B(rd_row_id_d1[0]), 
        .ZN(n220) );
  NR2D0BWP U326 ( .A1(rd_row_id_d1[2]), .A2(rd_row_id_d1[1]), .ZN(n223) );
  INVD0BWP U327 ( .I(rd_row_id_d1[2]), .ZN(n212) );
  NR2D0BWP U328 ( .A1(n212), .A2(rd_row_id_d1[1]), .ZN(n222) );
  AOI22D0BWP U329 ( .A1(n223), .A2(rd_data_out_bus[0]), .B1(n222), .B2(
        rd_data_out_bus[4]), .ZN(n219) );
  NR2D0BWP U330 ( .A1(n213), .A2(n212), .ZN(n227) );
  CKND2D0BWP U331 ( .A1(n227), .A2(rd_data_out_bus[6]), .ZN(n218) );
  CKND2D0BWP U332 ( .A1(n221), .A2(rd_data_out_bus[3]), .ZN(n215) );
  AOI22D0BWP U333 ( .A1(n223), .A2(rd_data_out_bus[1]), .B1(n222), .B2(
        rd_data_out_bus[5]), .ZN(n214) );
  ND3D0BWP U334 ( .A1(n215), .A2(n214), .A3(rd_row_id_d1[0]), .ZN(n216) );
  AOI32D0BWP U335 ( .A1(n227), .A2(ul_cur_state_d1_0_), .A3(rd_data_out_bus[7]), .B1(n216), .B2(ul_cur_state_d1_0_), .ZN(n217) );
  AOI31D0BWP U336 ( .A1(n220), .A2(n219), .A3(n218), .B(n217), .ZN(n960) );
  AOI21D0BWP U337 ( .A1(n221), .A2(rd_vld_bus[2]), .B(rd_row_id_d1[0]), .ZN(
        n231) );
  AOI22D0BWP U338 ( .A1(n223), .A2(rd_vld_bus[0]), .B1(n222), .B2(
        rd_vld_bus[4]), .ZN(n230) );
  CKND2D0BWP U339 ( .A1(n227), .A2(rd_vld_bus[6]), .ZN(n229) );
  CKND2D0BWP U340 ( .A1(n221), .A2(rd_vld_bus[3]), .ZN(n225) );
  AOI22D0BWP U341 ( .A1(n223), .A2(rd_vld_bus[1]), .B1(n222), .B2(
        rd_vld_bus[5]), .ZN(n224) );
  ND3D0BWP U342 ( .A1(n225), .A2(n224), .A3(rd_row_id_d1[0]), .ZN(n226) );
  AOI32D0BWP U343 ( .A1(n227), .A2(ul_cur_state_d1_0_), .A3(rd_vld_bus[7]), 
        .B1(n226), .B2(ul_cur_state_d1_0_), .ZN(n228) );
  AOI31D0BWP U344 ( .A1(n231), .A2(n230), .A3(n229), .B(n228), .ZN(n93) );
  INVD0BWP U345 ( .I(phase_row_id_d2[1]), .ZN(n233) );
  NR2D0BWP U346 ( .A1(n233), .A2(phase_row_id_d2[2]), .ZN(n241) );
  AOI21D0BWP U347 ( .A1(n241), .A2(p_out_vld_bus[2]), .B(phase_row_id_d2[0]), 
        .ZN(n240) );
  NR2D0BWP U348 ( .A1(phase_row_id_d2[2]), .A2(phase_row_id_d2[1]), .ZN(n243)
         );
  INVD0BWP U349 ( .I(phase_row_id_d2[2]), .ZN(n232) );
  NR2D0BWP U350 ( .A1(n232), .A2(phase_row_id_d2[1]), .ZN(n242) );
  AOI22D0BWP U351 ( .A1(n243), .A2(p_out_vld_bus[0]), .B1(n242), .B2(
        p_out_vld_bus[4]), .ZN(n239) );
  NR2D0BWP U352 ( .A1(n233), .A2(n232), .ZN(n247) );
  CKND2D0BWP U353 ( .A1(n247), .A2(p_out_vld_bus[6]), .ZN(n238) );
  CKND2D0BWP U354 ( .A1(n241), .A2(p_out_vld_bus[3]), .ZN(n235) );
  AOI22D0BWP U355 ( .A1(n243), .A2(p_out_vld_bus[1]), .B1(n242), .B2(
        p_out_vld_bus[5]), .ZN(n234) );
  ND3D0BWP U356 ( .A1(n235), .A2(n234), .A3(phase_row_id_d2[0]), .ZN(n236) );
  AOI32D0BWP U357 ( .A1(n247), .A2(dl_cur_state_d2), .A3(p_out_vld_bus[7]), 
        .B1(n236), .B2(dl_cur_state_d2), .ZN(n237) );
  AOI31D0BWP U358 ( .A1(n240), .A2(n239), .A3(n238), .B(n237), .ZN(n1440) );
  AOI21D0BWP U359 ( .A1(n241), .A2(p_out_bus[2]), .B(phase_row_id_d2[0]), .ZN(
        n251) );
  AOI22D0BWP U360 ( .A1(n243), .A2(p_out_bus[0]), .B1(n242), .B2(p_out_bus[4]), 
        .ZN(n250) );
  CKND2D0BWP U361 ( .A1(n247), .A2(p_out_bus[6]), .ZN(n249) );
  CKND2D0BWP U362 ( .A1(n241), .A2(p_out_bus[3]), .ZN(n245) );
  AOI22D0BWP U363 ( .A1(n243), .A2(p_out_bus[1]), .B1(n242), .B2(p_out_bus[5]), 
        .ZN(n244) );
  ND3D0BWP U364 ( .A1(n245), .A2(n244), .A3(phase_row_id_d2[0]), .ZN(n246) );
  AOI32D0BWP U365 ( .A1(n247), .A2(dl_cur_state_d2), .A3(p_out_bus[7]), .B1(
        n246), .B2(dl_cur_state_d2), .ZN(n248) );
  AOI31D0BWP U366 ( .A1(n251), .A2(n250), .A3(n249), .B(n248), .ZN(n1460) );
  NR3D0BWP U367 ( .A1(row_id[2]), .A2(n253), .A3(n252), .ZN(n1480) );
  NR3D0BWP U368 ( .A1(row_id[0]), .A2(n256), .A3(n254), .ZN(n1510) );
  NR3D0BWP U369 ( .A1(row_id[0]), .A2(n256), .A3(n255), .ZN(n1590) );
  NR3D0BWP U370 ( .A1(phase_row_id[2]), .A2(n258), .A3(n257), .ZN(n1360) );
endmodule

