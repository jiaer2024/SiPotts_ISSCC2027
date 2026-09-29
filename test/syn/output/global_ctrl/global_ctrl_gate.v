/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP1
// Date      : Tue Apr 28 19:24:57 2026
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
  wire   n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, en_g_d1,
         wr_data_in_g_d1, p_en_d1, p_en_d2, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n820, n830, n840, ul_cur_state_d1_0_, n870, n90,
         dl_cur_state, dl_next_state, n1170, n118, n1190, n120, n1210, n122,
         n1230, n124, n1250, n126, n1270, n128, n1290, dl_cur_state_d1,
         dl_cur_state_d2, n132, n134, n1350, n136, n1370, n138, n1390, n140,
         n1410, n142, n1430, n144, n1450, n146, n1470, n148, n1490, n1500, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n91, n93, n95, n97,
         n99, n101, n103, n105, n107, n109, n111, n113, n115, n117, n119, n121,
         n123, n125, n127, n129, n131, n133, n135, n137, n139, n141, n143,
         n145, n147, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248;
  wire   [1:0] ul_cur_state;
  wire   [8:0] col_id;
  wire   [2:0] row_id;
  wire   [2:0] rd_row_id;
  wire   [2:0] rd_row_id_d1;
  wire   [4:0] phase_col_id;
  wire   [2:0] phase_row_id;
  wire   [2:0] phase_row_id_d1;
  wire   [2:0] phase_row_id_d2;

  DFCNQD1BWP en_g_d1_reg ( .D(en_g), .CP(clk), .CDN(rstn), .Q(en_g_d1) );
  DFCNQD1BWP wr_data_in_g_d1_reg ( .D(wr_data_in_g), .CP(clk), .CDN(rstn), .Q(
        wr_data_in_g_d1) );
  DFCNQD1BWP p_en_d1_reg ( .D(p_en), .CP(clk), .CDN(rstn), .Q(p_en_d1) );
  DFCNQD1BWP p_en_d2_reg ( .D(p_en_d1), .CP(clk), .CDN(rstn), .Q(p_en_d2) );
  DFCNQD1BWP col_id_reg_0_ ( .D(n68), .CP(clk), .CDN(rstn), .Q(col_id[0]) );
  DFCNQD1BWP ul_cur_state_reg_1_ ( .D(n84), .CP(clk), .CDN(rstn), .Q(
        ul_cur_state[1]) );
  DFCNQD1BWP ul_cur_state_reg_0_ ( .D(n85), .CP(clk), .CDN(rstn), .Q(
        ul_cur_state[0]) );
  DFCNQD1BWP col_id_reg_1_ ( .D(n69), .CP(clk), .CDN(rstn), .Q(col_id[1]) );
  DFCNQD1BWP col_id_reg_2_ ( .D(n70), .CP(clk), .CDN(rstn), .Q(col_id[2]) );
  DFCNQD1BWP col_id_reg_3_ ( .D(n71), .CP(clk), .CDN(rstn), .Q(col_id[3]) );
  DFCNQD1BWP col_id_reg_4_ ( .D(n72), .CP(clk), .CDN(rstn), .Q(col_id[4]) );
  DFCNQD1BWP col_id_reg_5_ ( .D(n73), .CP(clk), .CDN(rstn), .Q(col_id[5]) );
  DFCNQD1BWP col_id_reg_6_ ( .D(n74), .CP(clk), .CDN(rstn), .Q(col_id[6]) );
  DFCNQD1BWP col_id_reg_7_ ( .D(n75), .CP(clk), .CDN(rstn), .Q(col_id[7]) );
  DFCNQD1BWP col_id_reg_8_ ( .D(n76), .CP(clk), .CDN(rstn), .Q(col_id[8]) );
  DFCNQD1BWP row_id_reg_0_ ( .D(n88), .CP(clk), .CDN(rstn), .Q(row_id[0]) );
  DFCNQD1BWP row_id_reg_1_ ( .D(n87), .CP(clk), .CDN(rstn), .Q(row_id[1]) );
  DFCNQD1BWP row_id_reg_2_ ( .D(n86), .CP(clk), .CDN(rstn), .Q(row_id[2]) );
  DFCNQD1BWP rd_row_id_reg_2_ ( .D(n840), .CP(clk), .CDN(rstn), .Q(
        rd_row_id[2]) );
  DFCNQD1BWP rd_row_id_reg_1_ ( .D(n830), .CP(clk), .CDN(rstn), .Q(
        rd_row_id[1]) );
  DFCNQD1BWP rd_row_id_reg_0_ ( .D(n820), .CP(clk), .CDN(rstn), .Q(
        rd_row_id[0]) );
  DFCNQD1BWP rd_row_id_d1_reg_2_ ( .D(rd_row_id[2]), .CP(clk), .CDN(rstn), .Q(
        rd_row_id_d1[2]) );
  DFCNQD1BWP rd_row_id_d1_reg_1_ ( .D(rd_row_id[1]), .CP(clk), .CDN(rstn), .Q(
        rd_row_id_d1[1]) );
  DFCNQD1BWP rd_row_id_d1_reg_0_ ( .D(rd_row_id[0]), .CP(clk), .CDN(rstn), .Q(
        rd_row_id_d1[0]) );
  DFCNQD1BWP phase_col_id_reg_0_ ( .D(n1170), .CP(clk), .CDN(rstn), .Q(
        phase_col_id[0]) );
  DFCNQD1BWP dl_cur_state_reg ( .D(dl_next_state), .CP(clk), .CDN(rstn), .Q(
        dl_cur_state) );
  DFCNQD1BWP phase_col_id_reg_1_ ( .D(n118), .CP(clk), .CDN(rstn), .Q(
        phase_col_id[1]) );
  DFCNQD1BWP phase_col_id_reg_2_ ( .D(n1190), .CP(clk), .CDN(rstn), .Q(
        phase_col_id[2]) );
  DFCNQD1BWP phase_col_id_reg_3_ ( .D(n120), .CP(clk), .CDN(rstn), .Q(
        phase_col_id[3]) );
  DFCNQD1BWP phase_col_id_reg_4_ ( .D(n1210), .CP(clk), .CDN(rstn), .Q(
        phase_col_id[4]) );
  DFCNQD1BWP phase_row_id_reg_0_ ( .D(n82), .CP(clk), .CDN(rstn), .Q(
        phase_row_id[0]) );
  DFCNQD1BWP phase_row_id_reg_1_ ( .D(n81), .CP(clk), .CDN(rstn), .Q(
        phase_row_id[1]) );
  DFCNQD1BWP phase_row_id_reg_2_ ( .D(n80), .CP(clk), .CDN(rstn), .Q(
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
  DFCNQD1BWP ul_cur_state_d1_reg_0_ ( .D(n79), .CP(clk), .CDN(rstn), .Q(
        ul_cur_state_d1_0_) );
  DFCNQD1BWP wr_data_in_g_d2_reg ( .D(wr_data_in_g_d1), .CP(clk), .CDN(rstn), 
        .Q(n250) );
  DFCNQD1BWP rd_data_out_g_reg ( .D(n90), .CP(clk), .CDN(rstn), .Q(n252) );
  DFCNQD1BWP rd_vld_g_reg ( .D(n870), .CP(clk), .CDN(rstn), .Q(n251) );
  DFCNQD1BWP p_code_vld_bus_reg_7_ ( .D(n1290), .CP(clk), .CDN(rstn), .Q(n269)
         );
  DFCNQD1BWP p_code_vld_bus_reg_6_ ( .D(n128), .CP(clk), .CDN(rstn), .Q(n270)
         );
  DFCNQD1BWP p_code_vld_bus_reg_5_ ( .D(n1270), .CP(clk), .CDN(rstn), .Q(n271)
         );
  DFCNQD1BWP p_code_vld_bus_reg_4_ ( .D(n126), .CP(clk), .CDN(rstn), .Q(n272)
         );
  DFCNQD1BWP p_code_vld_bus_reg_3_ ( .D(n1250), .CP(clk), .CDN(rstn), .Q(n273)
         );
  DFCNQD1BWP p_code_vld_bus_reg_2_ ( .D(n124), .CP(clk), .CDN(rstn), .Q(n274)
         );
  DFCNQD1BWP p_code_vld_bus_reg_1_ ( .D(n1230), .CP(clk), .CDN(rstn), .Q(n275)
         );
  DFCNQD1BWP p_code_vld_bus_reg_0_ ( .D(n122), .CP(clk), .CDN(rstn), .Q(n276)
         );
  DFCNQD1BWP p_out_g_reg ( .D(n134), .CP(clk), .CDN(rstn), .Q(n278) );
  DFCNQD1BWP p_out_vld_g_reg ( .D(n132), .CP(clk), .CDN(rstn), .Q(n277) );
  DFCNQD1BWP wr_vld_bus_reg_7_ ( .D(n1490), .CP(clk), .CDN(rstn), .Q(n253) );
  DFCNQD1BWP wr_vld_bus_reg_6_ ( .D(n1470), .CP(clk), .CDN(rstn), .Q(n254) );
  DFCNQD1BWP wr_vld_bus_reg_5_ ( .D(n1450), .CP(clk), .CDN(rstn), .Q(n255) );
  DFCNQD1BWP wr_vld_bus_reg_4_ ( .D(n1430), .CP(clk), .CDN(rstn), .Q(n256) );
  DFCNQD1BWP wr_vld_bus_reg_3_ ( .D(n1410), .CP(clk), .CDN(rstn), .Q(n257) );
  DFCNQD1BWP wr_vld_bus_reg_2_ ( .D(n1390), .CP(clk), .CDN(rstn), .Q(n258) );
  DFCNQD1BWP wr_vld_bus_reg_1_ ( .D(n1370), .CP(clk), .CDN(rstn), .Q(n259) );
  DFCNQD1BWP wr_vld_bus_reg_0_ ( .D(n1350), .CP(clk), .CDN(rstn), .Q(n260) );
  DFCNQD1BWP rd_rdy_bus_reg_7_ ( .D(n1500), .CP(clk), .CDN(rstn), .Q(n261) );
  DFCNQD1BWP rd_rdy_bus_reg_6_ ( .D(n148), .CP(clk), .CDN(rstn), .Q(n262) );
  DFCNQD1BWP rd_rdy_bus_reg_5_ ( .D(n146), .CP(clk), .CDN(rstn), .Q(n263) );
  DFCNQD1BWP rd_rdy_bus_reg_4_ ( .D(n144), .CP(clk), .CDN(rstn), .Q(n264) );
  DFCNQD1BWP rd_rdy_bus_reg_3_ ( .D(n142), .CP(clk), .CDN(rstn), .Q(n265) );
  DFCNQD1BWP rd_rdy_bus_reg_2_ ( .D(n140), .CP(clk), .CDN(rstn), .Q(n266) );
  DFCNQD1BWP rd_rdy_bus_reg_1_ ( .D(n138), .CP(clk), .CDN(rstn), .Q(n267) );
  DFCNQD1BWP rd_rdy_bus_reg_0_ ( .D(n136), .CP(clk), .CDN(rstn), .Q(n268) );
  DFCNQD1BWP couple_en_reg ( .D(n83), .CP(clk), .CDN(rstn), .Q(n249) );
  IND2D0BWP U137 ( .A1(couple_en), .B1(n239), .ZN(n83) );
  INVD0BWP U138 ( .I(n250), .ZN(n89) );
  CKND6BWP U139 ( .I(n89), .ZN(wr_data_in_g_d2) );
  INVD0BWP U140 ( .I(n252), .ZN(n91) );
  CKND6BWP U141 ( .I(n91), .ZN(rd_data_out_g) );
  INVD0BWP U142 ( .I(n251), .ZN(n93) );
  CKND6BWP U143 ( .I(n93), .ZN(rd_vld_g) );
  INVD0BWP U144 ( .I(n269), .ZN(n95) );
  CKND6BWP U145 ( .I(n95), .ZN(p_code_vld_bus[7]) );
  INVD0BWP U146 ( .I(n270), .ZN(n97) );
  CKND6BWP U147 ( .I(n97), .ZN(p_code_vld_bus[6]) );
  INVD0BWP U148 ( .I(n271), .ZN(n99) );
  CKND6BWP U149 ( .I(n99), .ZN(p_code_vld_bus[5]) );
  INVD0BWP U150 ( .I(n272), .ZN(n101) );
  CKND6BWP U151 ( .I(n101), .ZN(p_code_vld_bus[4]) );
  INVD0BWP U152 ( .I(n273), .ZN(n103) );
  CKND6BWP U153 ( .I(n103), .ZN(p_code_vld_bus[3]) );
  INVD0BWP U154 ( .I(n274), .ZN(n105) );
  CKND6BWP U155 ( .I(n105), .ZN(p_code_vld_bus[2]) );
  INVD0BWP U156 ( .I(n275), .ZN(n107) );
  CKND6BWP U157 ( .I(n107), .ZN(p_code_vld_bus[1]) );
  INVD0BWP U158 ( .I(n276), .ZN(n109) );
  CKND6BWP U159 ( .I(n109), .ZN(p_code_vld_bus[0]) );
  INVD0BWP U160 ( .I(n278), .ZN(n111) );
  CKND6BWP U161 ( .I(n111), .ZN(p_out_g) );
  INVD0BWP U162 ( .I(n277), .ZN(n113) );
  CKND6BWP U163 ( .I(n113), .ZN(p_out_vld_g) );
  INVD0BWP U164 ( .I(n253), .ZN(n115) );
  CKND6BWP U165 ( .I(n115), .ZN(wr_vld_bus[7]) );
  INVD0BWP U166 ( .I(n254), .ZN(n117) );
  CKND6BWP U167 ( .I(n117), .ZN(wr_vld_bus[6]) );
  INVD0BWP U168 ( .I(n255), .ZN(n119) );
  CKND6BWP U169 ( .I(n119), .ZN(wr_vld_bus[5]) );
  INVD0BWP U170 ( .I(n256), .ZN(n121) );
  CKND6BWP U171 ( .I(n121), .ZN(wr_vld_bus[4]) );
  INVD0BWP U172 ( .I(n257), .ZN(n123) );
  CKND6BWP U173 ( .I(n123), .ZN(wr_vld_bus[3]) );
  INVD0BWP U174 ( .I(n258), .ZN(n125) );
  CKND6BWP U175 ( .I(n125), .ZN(wr_vld_bus[2]) );
  INVD0BWP U176 ( .I(n259), .ZN(n127) );
  CKND6BWP U177 ( .I(n127), .ZN(wr_vld_bus[1]) );
  INVD0BWP U178 ( .I(n260), .ZN(n129) );
  CKND6BWP U179 ( .I(n129), .ZN(wr_vld_bus[0]) );
  INVD0BWP U180 ( .I(n261), .ZN(n131) );
  CKND6BWP U181 ( .I(n131), .ZN(rd_rdy_bus[7]) );
  INVD0BWP U182 ( .I(n262), .ZN(n133) );
  CKND6BWP U183 ( .I(n133), .ZN(rd_rdy_bus[6]) );
  INVD0BWP U184 ( .I(n263), .ZN(n135) );
  CKND6BWP U185 ( .I(n135), .ZN(rd_rdy_bus[5]) );
  INVD0BWP U186 ( .I(n264), .ZN(n137) );
  CKND6BWP U187 ( .I(n137), .ZN(rd_rdy_bus[4]) );
  INVD0BWP U188 ( .I(n265), .ZN(n139) );
  CKND6BWP U189 ( .I(n139), .ZN(rd_rdy_bus[3]) );
  INVD0BWP U190 ( .I(n266), .ZN(n141) );
  CKND6BWP U191 ( .I(n141), .ZN(rd_rdy_bus[2]) );
  INVD0BWP U192 ( .I(n267), .ZN(n143) );
  CKND6BWP U193 ( .I(n143), .ZN(rd_rdy_bus[1]) );
  INVD0BWP U194 ( .I(n268), .ZN(n145) );
  CKND6BWP U195 ( .I(n145), .ZN(rd_rdy_bus[0]) );
  INVD0BWP U196 ( .I(n249), .ZN(n147) );
  CKND6BWP U197 ( .I(n147), .ZN(couple_en) );
  INVD0BWP U198 ( .I(n246), .ZN(n173) );
  TIEHBWP U199 ( .Z(n79) );
  CKND2D0BWP U200 ( .A1(ul_cur_state[0]), .A2(ul_cur_state[1]), .ZN(n239) );
  INVD0BWP U201 ( .I(row_id[2]), .ZN(n189) );
  NR2D0BWP U202 ( .A1(n239), .A2(n189), .ZN(n840) );
  INVD0BWP U203 ( .I(dl_cur_state), .ZN(n155) );
  NR2D0BWP U204 ( .A1(n155), .A2(phase_col_id[0]), .ZN(n1170) );
  INVD0BWP U205 ( .I(ul_cur_state[0]), .ZN(n186) );
  NR2D0BWP U206 ( .A1(n186), .A2(col_id[0]), .ZN(n68) );
  CKND2D0BWP U207 ( .A1(phase_row_id[2]), .A2(phase_row_id[1]), .ZN(n156) );
  CKND2D0BWP U208 ( .A1(phase_row_id[0]), .A2(dl_cur_state), .ZN(n245) );
  NR2D0BWP U209 ( .A1(n156), .A2(n245), .ZN(n1290) );
  NR2D0BWP U210 ( .A1(n155), .A2(phase_row_id[0]), .ZN(n162) );
  INVD0BWP U211 ( .I(n162), .ZN(n243) );
  NR2D0BWP U212 ( .A1(n156), .A2(n243), .ZN(n128) );
  OR2D0BWP U213 ( .A1(n245), .A2(phase_row_id[1]), .Z(n172) );
  NR2D0BWP U214 ( .A1(n172), .A2(phase_row_id[2]), .ZN(n1230) );
  INVD0BWP U215 ( .I(phase_row_id[2]), .ZN(n247) );
  NR2D0BWP U216 ( .A1(n247), .A2(n172), .ZN(n1270) );
  INVD0BWP U217 ( .I(phase_row_id[1]), .ZN(n244) );
  CKND2D0BWP U218 ( .A1(n162), .A2(n244), .ZN(n149) );
  NR2D0BWP U219 ( .A1(n149), .A2(phase_row_id[2]), .ZN(n122) );
  NR2D0BWP U220 ( .A1(n149), .A2(n247), .ZN(n126) );
  NR2D0BWP U221 ( .A1(n186), .A2(ul_cur_state[1]), .ZN(n151) );
  CKND2D0BWP U222 ( .A1(n151), .A2(n189), .ZN(n240) );
  CKND2D0BWP U223 ( .A1(row_id[1]), .A2(row_id[0]), .ZN(n190) );
  NR2D0BWP U224 ( .A1(n240), .A2(n190), .ZN(n1410) );
  INVD0BWP U225 ( .I(row_id[0]), .ZN(n182) );
  INVD0BWP U226 ( .I(row_id[1]), .ZN(n242) );
  CKND2D0BWP U227 ( .A1(n182), .A2(n242), .ZN(n238) );
  NR2D0BWP U228 ( .A1(n240), .A2(n238), .ZN(n1350) );
  CKND2D0BWP U229 ( .A1(row_id[0]), .A2(n242), .ZN(n184) );
  NR2D0BWP U230 ( .A1(n240), .A2(n184), .ZN(n1370) );
  INVD0BWP U231 ( .I(n840), .ZN(n150) );
  NR2D0BWP U232 ( .A1(n150), .A2(n184), .ZN(n146) );
  NR2D0BWP U233 ( .A1(n150), .A2(n238), .ZN(n144) );
  CKND2D0BWP U234 ( .A1(row_id[2]), .A2(n151), .ZN(n241) );
  NR2D0BWP U235 ( .A1(n241), .A2(n190), .ZN(n1490) );
  NR2D0BWP U236 ( .A1(n241), .A2(n238), .ZN(n1430) );
  NR2D0BWP U237 ( .A1(n241), .A2(n184), .ZN(n1450) );
  NR2D0BWP U238 ( .A1(n239), .A2(n182), .ZN(n820) );
  AN3D0BWP U239 ( .A1(n820), .A2(n242), .A3(n189), .Z(n138) );
  NR2D0BWP U240 ( .A1(n239), .A2(n242), .ZN(n830) );
  CKND2D0BWP U241 ( .A1(n830), .A2(n189), .ZN(n152) );
  NR2D0BWP U242 ( .A1(n152), .A2(n182), .ZN(n142) );
  NR2D0BWP U243 ( .A1(n152), .A2(row_id[0]), .ZN(n140) );
  CKND2D0BWP U244 ( .A1(row_id[2]), .A2(n830), .ZN(n153) );
  NR2D0BWP U245 ( .A1(n153), .A2(row_id[0]), .ZN(n148) );
  NR2D0BWP U246 ( .A1(n153), .A2(n182), .ZN(n1500) );
  INVD0BWP U247 ( .I(phase_col_id[3]), .ZN(n154) );
  CKND2D0BWP U248 ( .A1(phase_col_id[0]), .A2(phase_col_id[1]), .ZN(n161) );
  INVD0BWP U249 ( .I(n161), .ZN(n160) );
  CKND2D0BWP U250 ( .A1(n160), .A2(phase_col_id[2]), .ZN(n159) );
  NR2D0BWP U251 ( .A1(n159), .A2(n154), .ZN(n166) );
  IND4D0BWP U252 ( .A1(phase_col_id[2]), .B1(n154), .B2(n160), .B3(
        phase_col_id[4]), .ZN(n157) );
  CKND2D0BWP U253 ( .A1(dl_cur_state), .A2(n157), .ZN(n246) );
  AOI211D0BWP U254 ( .A1(n154), .A2(n159), .B(n166), .C(n246), .ZN(n120) );
  CKND2D0BWP U255 ( .A1(p_en_d2), .A2(n155), .ZN(n158) );
  INVD0BWP U256 ( .I(phase_row_id[0]), .ZN(n163) );
  OAI31D0BWP U257 ( .A1(n163), .A2(n157), .A3(n156), .B(dl_cur_state), .ZN(
        n248) );
  OAI21D0BWP U258 ( .A1(p_en_d1), .A2(n158), .B(n248), .ZN(dl_next_state) );
  OA211D0BWP U259 ( .A1(n160), .A2(phase_col_id[2]), .B(n173), .C(n159), .Z(
        n1190) );
  OA211D0BWP U260 ( .A1(phase_col_id[0]), .A2(phase_col_id[1]), .B(n173), .C(
        n161), .Z(n118) );
  NR2D0BWP U261 ( .A1(n173), .A2(n162), .ZN(n171) );
  AOI21D0BWP U262 ( .A1(n173), .A2(n163), .B(n171), .ZN(n82) );
  INVD0BWP U263 ( .I(phase_col_id[4]), .ZN(n165) );
  INVD0BWP U264 ( .I(n166), .ZN(n164) );
  AOI221D0BWP U265 ( .A1(phase_col_id[4]), .A2(n166), .B1(n165), .B2(n164), 
        .C(n246), .ZN(n1210) );
  IND4D0BWP U266 ( .A1(col_id[2]), .B1(col_id[8]), .B2(col_id[5]), .B3(
        col_id[7]), .ZN(n168) );
  CKND2D0BWP U267 ( .A1(col_id[0]), .A2(col_id[1]), .ZN(n169) );
  OR4D0BWP U268 ( .A1(col_id[3]), .A2(col_id[4]), .A3(col_id[6]), .A4(n169), 
        .Z(n167) );
  NR2D0BWP U269 ( .A1(n168), .A2(n167), .ZN(n183) );
  NR2D0BWP U270 ( .A1(n186), .A2(n183), .ZN(n195) );
  OA211D0BWP U271 ( .A1(col_id[0]), .A2(col_id[1]), .B(n195), .C(n169), .Z(n69) );
  INVD0BWP U272 ( .I(n169), .ZN(n170) );
  CKND2D0BWP U273 ( .A1(col_id[2]), .A2(n170), .ZN(n175) );
  INVD0BWP U274 ( .I(col_id[3]), .ZN(n176) );
  NR2D0BWP U275 ( .A1(n175), .A2(n176), .ZN(n174) );
  CKND2D0BWP U276 ( .A1(col_id[4]), .A2(n174), .ZN(n177) );
  OA211D0BWP U277 ( .A1(col_id[4]), .A2(n174), .B(n195), .C(n177), .Z(n72) );
  OA211D0BWP U278 ( .A1(col_id[2]), .A2(n170), .B(n195), .C(n175), .Z(n70) );
  OAI22D0BWP U279 ( .A1(n173), .A2(n172), .B1(n171), .B2(n244), .ZN(n81) );
  INVD0BWP U280 ( .I(n195), .ZN(n192) );
  AOI211D0BWP U281 ( .A1(n176), .A2(n175), .B(n174), .C(n192), .ZN(n71) );
  INVD0BWP U282 ( .I(col_id[5]), .ZN(n178) );
  NR2D0BWP U283 ( .A1(n177), .A2(n178), .ZN(n188) );
  AOI211D0BWP U284 ( .A1(n178), .A2(n177), .B(n188), .C(n192), .ZN(n73) );
  INVD0BWP U285 ( .I(ul_cur_state[1]), .ZN(n180) );
  OAI21D0BWP U286 ( .A1(ul_cur_state[0]), .A2(en_g_d1), .B(n180), .ZN(n179) );
  IND3D0BWP U287 ( .A1(n190), .B1(n183), .B2(row_id[2]), .ZN(n181) );
  CKND2D0BWP U288 ( .A1(ul_cur_state[0]), .A2(n181), .ZN(n191) );
  CKND2D0BWP U289 ( .A1(n179), .A2(n191), .ZN(n85) );
  AOI21D0BWP U290 ( .A1(n181), .A2(n180), .B(n186), .ZN(n84) );
  AOI21D0BWP U291 ( .A1(ul_cur_state[0]), .A2(n182), .B(n195), .ZN(n187) );
  AOI21D0BWP U292 ( .A1(n195), .A2(n182), .B(n187), .ZN(n88) );
  IND2D0BWP U293 ( .A1(n184), .B1(n183), .ZN(n185) );
  OAI22D0BWP U294 ( .A1(n187), .A2(n242), .B1(n186), .B2(n185), .ZN(n87) );
  CKND2D0BWP U295 ( .A1(col_id[6]), .A2(n188), .ZN(n193) );
  OA211D0BWP U296 ( .A1(col_id[6]), .A2(n188), .B(n195), .C(n193), .Z(n74) );
  OAI32D0BWP U297 ( .A1(n191), .A2(n195), .A3(n190), .B1(n189), .B2(n191), 
        .ZN(n86) );
  INVD0BWP U298 ( .I(col_id[7]), .ZN(n194) );
  NR2D0BWP U299 ( .A1(n193), .A2(n194), .ZN(n197) );
  AOI211D0BWP U300 ( .A1(n194), .A2(n193), .B(n197), .C(n192), .ZN(n75) );
  OAI21D0BWP U301 ( .A1(col_id[8]), .A2(n197), .B(n195), .ZN(n196) );
  AOI21D0BWP U302 ( .A1(col_id[8]), .A2(n197), .B(n196), .ZN(n76) );
  INVD0BWP U303 ( .I(rd_row_id_d1[1]), .ZN(n199) );
  NR2D0BWP U304 ( .A1(n199), .A2(rd_row_id_d1[2]), .ZN(n227) );
  AOI21D0BWP U305 ( .A1(n227), .A2(rd_data_out_bus[2]), .B(rd_row_id_d1[0]), 
        .ZN(n206) );
  NR2D0BWP U306 ( .A1(rd_row_id_d1[2]), .A2(rd_row_id_d1[1]), .ZN(n229) );
  INVD0BWP U307 ( .I(rd_row_id_d1[2]), .ZN(n198) );
  NR2D0BWP U308 ( .A1(n198), .A2(rd_row_id_d1[1]), .ZN(n228) );
  AOI22D0BWP U309 ( .A1(n229), .A2(rd_data_out_bus[0]), .B1(n228), .B2(
        rd_data_out_bus[4]), .ZN(n205) );
  NR2D0BWP U310 ( .A1(n199), .A2(n198), .ZN(n233) );
  CKND2D0BWP U311 ( .A1(n233), .A2(rd_data_out_bus[6]), .ZN(n204) );
  CKND2D0BWP U312 ( .A1(n227), .A2(rd_data_out_bus[3]), .ZN(n201) );
  AOI22D0BWP U313 ( .A1(n229), .A2(rd_data_out_bus[1]), .B1(n228), .B2(
        rd_data_out_bus[5]), .ZN(n200) );
  ND3D0BWP U314 ( .A1(n201), .A2(n200), .A3(rd_row_id_d1[0]), .ZN(n202) );
  AOI32D0BWP U315 ( .A1(n233), .A2(ul_cur_state_d1_0_), .A3(rd_data_out_bus[7]), .B1(n202), .B2(ul_cur_state_d1_0_), .ZN(n203) );
  AOI31D0BWP U316 ( .A1(n206), .A2(n205), .A3(n204), .B(n203), .ZN(n90) );
  INVD0BWP U317 ( .I(phase_row_id_d2[1]), .ZN(n208) );
  NR2D0BWP U318 ( .A1(n208), .A2(phase_row_id_d2[2]), .ZN(n216) );
  AOI21D0BWP U319 ( .A1(n216), .A2(p_out_bus[2]), .B(phase_row_id_d2[0]), .ZN(
        n215) );
  NR2D0BWP U320 ( .A1(phase_row_id_d2[2]), .A2(phase_row_id_d2[1]), .ZN(n218)
         );
  INVD0BWP U321 ( .I(phase_row_id_d2[2]), .ZN(n207) );
  NR2D0BWP U322 ( .A1(n207), .A2(phase_row_id_d2[1]), .ZN(n217) );
  AOI22D0BWP U323 ( .A1(n218), .A2(p_out_bus[0]), .B1(n217), .B2(p_out_bus[4]), 
        .ZN(n214) );
  NR2D0BWP U324 ( .A1(n208), .A2(n207), .ZN(n222) );
  CKND2D0BWP U325 ( .A1(n222), .A2(p_out_bus[6]), .ZN(n213) );
  CKND2D0BWP U326 ( .A1(n216), .A2(p_out_bus[3]), .ZN(n210) );
  AOI22D0BWP U327 ( .A1(n218), .A2(p_out_bus[1]), .B1(n217), .B2(p_out_bus[5]), 
        .ZN(n209) );
  ND3D0BWP U328 ( .A1(n210), .A2(n209), .A3(phase_row_id_d2[0]), .ZN(n211) );
  AOI32D0BWP U329 ( .A1(n222), .A2(dl_cur_state_d2), .A3(p_out_bus[7]), .B1(
        n211), .B2(dl_cur_state_d2), .ZN(n212) );
  AOI31D0BWP U330 ( .A1(n215), .A2(n214), .A3(n213), .B(n212), .ZN(n134) );
  AOI21D0BWP U331 ( .A1(n216), .A2(p_out_vld_bus[2]), .B(phase_row_id_d2[0]), 
        .ZN(n226) );
  AOI22D0BWP U332 ( .A1(n218), .A2(p_out_vld_bus[0]), .B1(n217), .B2(
        p_out_vld_bus[4]), .ZN(n225) );
  CKND2D0BWP U333 ( .A1(n222), .A2(p_out_vld_bus[6]), .ZN(n224) );
  CKND2D0BWP U334 ( .A1(n216), .A2(p_out_vld_bus[3]), .ZN(n220) );
  AOI22D0BWP U335 ( .A1(n218), .A2(p_out_vld_bus[1]), .B1(n217), .B2(
        p_out_vld_bus[5]), .ZN(n219) );
  ND3D0BWP U336 ( .A1(n220), .A2(n219), .A3(phase_row_id_d2[0]), .ZN(n221) );
  AOI32D0BWP U337 ( .A1(n222), .A2(dl_cur_state_d2), .A3(p_out_vld_bus[7]), 
        .B1(n221), .B2(dl_cur_state_d2), .ZN(n223) );
  AOI31D0BWP U338 ( .A1(n226), .A2(n225), .A3(n224), .B(n223), .ZN(n132) );
  AOI21D0BWP U339 ( .A1(n227), .A2(rd_vld_bus[2]), .B(rd_row_id_d1[0]), .ZN(
        n237) );
  AOI22D0BWP U340 ( .A1(n229), .A2(rd_vld_bus[0]), .B1(n228), .B2(
        rd_vld_bus[4]), .ZN(n236) );
  CKND2D0BWP U341 ( .A1(n233), .A2(rd_vld_bus[6]), .ZN(n235) );
  CKND2D0BWP U342 ( .A1(n227), .A2(rd_vld_bus[3]), .ZN(n231) );
  AOI22D0BWP U343 ( .A1(n229), .A2(rd_vld_bus[1]), .B1(n228), .B2(
        rd_vld_bus[5]), .ZN(n230) );
  ND3D0BWP U344 ( .A1(n231), .A2(n230), .A3(rd_row_id_d1[0]), .ZN(n232) );
  AOI32D0BWP U345 ( .A1(n233), .A2(ul_cur_state_d1_0_), .A3(rd_vld_bus[7]), 
        .B1(n232), .B2(ul_cur_state_d1_0_), .ZN(n234) );
  AOI31D0BWP U346 ( .A1(n237), .A2(n236), .A3(n235), .B(n234), .ZN(n870) );
  NR3D0BWP U347 ( .A1(row_id[2]), .A2(n239), .A3(n238), .ZN(n136) );
  NR3D0BWP U348 ( .A1(row_id[0]), .A2(n242), .A3(n240), .ZN(n1390) );
  NR3D0BWP U349 ( .A1(row_id[0]), .A2(n242), .A3(n241), .ZN(n1470) );
  NR3D0BWP U350 ( .A1(phase_row_id[2]), .A2(n243), .A3(n244), .ZN(n124) );
  NR3D0BWP U351 ( .A1(n245), .A2(phase_row_id[2]), .A3(n244), .ZN(n1250) );
  MOAI22D0BWP U352 ( .A1(n248), .A2(n247), .B1(n1250), .B2(n246), .ZN(n80) );
endmodule

