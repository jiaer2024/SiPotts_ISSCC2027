/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP1
// Date      : Tue Apr 28 21:21:11 2026
/////////////////////////////////////////////////////////////


module global_ctrl ( VSS, H_VDD, clk, rstn, p_en, en_g, wr_data_in_g, rd_vld_bus, 
        rd_data_out_bus, p_out_vld_bus, p_out_bus, couple_en, wr_data_in_g_d2, 
        rd_vld_g, rd_data_out_g, wr_vld_bus, rd_rdy_bus, p_code_vld_bus, 
        p_out_vld_g, p_out_g );
	inout H_VDD;
	inout VSS;
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
  wire   en_g_d1, wr_data_in_g_d1, p_en_d1, p_en_d2, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n820, n830, n840, ul_cur_state_d1_0_, n870, n90,
         dl_cur_state, dl_next_state, n1170, n118, n1190, n120, n1210, n122,
         n1230, n124, n1250, n126, n1270, n128, n1290, dl_cur_state_d1,
         dl_cur_state_d2, n132, n134, n1350, n136, n1370, n138, n1390, n140,
         n1410, n142, n1430, n144, n1450, n146, n1470, n148, n1490, n1500, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n77, n78, n89, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117;
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
        .Q(wr_data_in_g_d2) );
  DFCNQD1BWP rd_data_out_g_reg ( .D(n90), .CP(clk), .CDN(rstn), .Q(
        rd_data_out_g) );
  DFCNQD1BWP rd_vld_g_reg ( .D(n870), .CP(clk), .CDN(rstn), .Q(rd_vld_g) );
  DFCNQD1BWP p_code_vld_bus_reg_7_ ( .D(n1290), .CP(clk), .CDN(rstn), .Q(
        p_code_vld_bus[7]) );
  DFCNQD1BWP p_code_vld_bus_reg_6_ ( .D(n128), .CP(clk), .CDN(rstn), .Q(
        p_code_vld_bus[6]) );
  DFCNQD1BWP p_code_vld_bus_reg_5_ ( .D(n1270), .CP(clk), .CDN(rstn), .Q(
        p_code_vld_bus[5]) );
  DFCNQD1BWP p_code_vld_bus_reg_4_ ( .D(n126), .CP(clk), .CDN(rstn), .Q(
        p_code_vld_bus[4]) );
  DFCNQD1BWP p_code_vld_bus_reg_3_ ( .D(n1250), .CP(clk), .CDN(rstn), .Q(
        p_code_vld_bus[3]) );
  DFCNQD1BWP p_code_vld_bus_reg_2_ ( .D(n124), .CP(clk), .CDN(rstn), .Q(
        p_code_vld_bus[2]) );
  DFCNQD1BWP p_code_vld_bus_reg_1_ ( .D(n1230), .CP(clk), .CDN(rstn), .Q(
        p_code_vld_bus[1]) );
  DFCNQD1BWP p_code_vld_bus_reg_0_ ( .D(n122), .CP(clk), .CDN(rstn), .Q(
        p_code_vld_bus[0]) );
  DFCNQD1BWP p_out_g_reg ( .D(n134), .CP(clk), .CDN(rstn), .Q(p_out_g) );
  DFCNQD1BWP p_out_vld_g_reg ( .D(n132), .CP(clk), .CDN(rstn), .Q(p_out_vld_g)
         );
  DFCNQD1BWP wr_vld_bus_reg_7_ ( .D(n1490), .CP(clk), .CDN(rstn), .Q(
        wr_vld_bus[7]) );
  DFCNQD1BWP wr_vld_bus_reg_6_ ( .D(n1470), .CP(clk), .CDN(rstn), .Q(
        wr_vld_bus[6]) );
  DFCNQD1BWP wr_vld_bus_reg_5_ ( .D(n1450), .CP(clk), .CDN(rstn), .Q(
        wr_vld_bus[5]) );
  DFCNQD1BWP wr_vld_bus_reg_4_ ( .D(n1430), .CP(clk), .CDN(rstn), .Q(
        wr_vld_bus[4]) );
  DFCNQD1BWP wr_vld_bus_reg_3_ ( .D(n1410), .CP(clk), .CDN(rstn), .Q(
        wr_vld_bus[3]) );
  DFCNQD1BWP wr_vld_bus_reg_2_ ( .D(n1390), .CP(clk), .CDN(rstn), .Q(
        wr_vld_bus[2]) );
  DFCNQD1BWP wr_vld_bus_reg_1_ ( .D(n1370), .CP(clk), .CDN(rstn), .Q(
        wr_vld_bus[1]) );
  DFCNQD1BWP wr_vld_bus_reg_0_ ( .D(n1350), .CP(clk), .CDN(rstn), .Q(
        wr_vld_bus[0]) );
  DFCNQD1BWP rd_rdy_bus_reg_7_ ( .D(n1500), .CP(clk), .CDN(rstn), .Q(
        rd_rdy_bus[7]) );
  DFCNQD1BWP rd_rdy_bus_reg_6_ ( .D(n148), .CP(clk), .CDN(rstn), .Q(
        rd_rdy_bus[6]) );
  DFCNQD1BWP rd_rdy_bus_reg_5_ ( .D(n146), .CP(clk), .CDN(rstn), .Q(
        rd_rdy_bus[5]) );
  DFCNQD1BWP rd_rdy_bus_reg_4_ ( .D(n144), .CP(clk), .CDN(rstn), .Q(
        rd_rdy_bus[4]) );
  DFCNQD1BWP rd_rdy_bus_reg_3_ ( .D(n142), .CP(clk), .CDN(rstn), .Q(
        rd_rdy_bus[3]) );
  DFCNQD1BWP rd_rdy_bus_reg_2_ ( .D(n140), .CP(clk), .CDN(rstn), .Q(
        rd_rdy_bus[2]) );
  DFCNQD1BWP rd_rdy_bus_reg_1_ ( .D(n138), .CP(clk), .CDN(rstn), .Q(
        rd_rdy_bus[1]) );
  DFCNQD1BWP rd_rdy_bus_reg_0_ ( .D(n136), .CP(clk), .CDN(rstn), .Q(
        rd_rdy_bus[0]) );
  DFCNQD1BWP couple_en_reg ( .D(n83), .CP(clk), .CDN(rstn), .Q(couple_en) );
  INVD0BWP U137 ( .I(phase_row_id[2]), .ZN(n110) );
  INVD0BWP U138 ( .I(row_id[2]), .ZN(n65) );
  TIEHBWP U139 ( .Z(n79) );
  CKND2D0BWP U140 ( .A1(ul_cur_state[0]), .A2(ul_cur_state[1]), .ZN(n113) );
  NR2D0BWP U141 ( .A1(n113), .A2(n65), .ZN(n840) );
  CKND2D0BWP U142 ( .A1(phase_row_id[1]), .A2(dl_cur_state), .ZN(n117) );
  CKND2D0BWP U143 ( .A1(phase_row_id[0]), .A2(n110), .ZN(n26) );
  NR2D0BWP U144 ( .A1(n117), .A2(n26), .ZN(n1250) );
  CKND2D0BWP U145 ( .A1(phase_col_id[0]), .A2(phase_col_id[1]), .ZN(n60) );
  INVD0BWP U146 ( .I(phase_col_id[4]), .ZN(n53) );
  NR4D0BWP U147 ( .A1(phase_col_id[2]), .A2(phase_col_id[3]), .A3(n60), .A4(
        n53), .ZN(n48) );
  INVD0BWP U148 ( .I(n48), .ZN(n1) );
  INVD0BWP U149 ( .I(phase_row_id[1]), .ZN(n49) );
  CKND2D0BWP U150 ( .A1(phase_row_id[0]), .A2(phase_row_id[2]), .ZN(n27) );
  OAI31D0BWP U151 ( .A1(n1), .A2(n49), .A3(n27), .B(dl_cur_state), .ZN(n61) );
  CKND2D0BWP U152 ( .A1(dl_cur_state), .A2(n1), .ZN(n56) );
  MOAI22D0BWP U153 ( .A1(n110), .A2(n61), .B1(n1250), .B2(n56), .ZN(n80) );
  INVD0BWP U154 ( .I(ul_cur_state[0]), .ZN(n108) );
  NR2D0BWP U155 ( .A1(n108), .A2(col_id[0]), .ZN(n68) );
  IND2D0BWP U156 ( .A1(couple_en), .B1(n113), .ZN(n83) );
  INVD0BWP U157 ( .I(row_id[0]), .ZN(n91) );
  NR2D0BWP U158 ( .A1(n113), .A2(n91), .ZN(n820) );
  INVD0BWP U159 ( .I(row_id[1]), .ZN(n116) );
  AN3D0BWP U160 ( .A1(n820), .A2(n116), .A3(n65), .Z(n138) );
  NR2D0BWP U161 ( .A1(n113), .A2(n116), .ZN(n830) );
  CKND2D0BWP U162 ( .A1(n830), .A2(n91), .ZN(n3) );
  NR2D0BWP U163 ( .A1(n3), .A2(row_id[2]), .ZN(n140) );
  CKND2D0BWP U164 ( .A1(row_id[0]), .A2(n830), .ZN(n4) );
  NR2D0BWP U165 ( .A1(n4), .A2(row_id[2]), .ZN(n142) );
  INVD0BWP U166 ( .I(n840), .ZN(n2) );
  CKND2D0BWP U167 ( .A1(n91), .A2(n116), .ZN(n112) );
  NR2D0BWP U168 ( .A1(n2), .A2(n112), .ZN(n144) );
  CKND2D0BWP U169 ( .A1(row_id[0]), .A2(n116), .ZN(n77) );
  NR2D0BWP U170 ( .A1(n2), .A2(n77), .ZN(n146) );
  NR2D0BWP U171 ( .A1(n3), .A2(n65), .ZN(n148) );
  NR2D0BWP U172 ( .A1(n4), .A2(n65), .ZN(n1500) );
  NR2D0BWP U173 ( .A1(n108), .A2(ul_cur_state[1]), .ZN(n5) );
  CKND2D0BWP U174 ( .A1(n5), .A2(n65), .ZN(n114) );
  NR2D0BWP U175 ( .A1(n112), .A2(n114), .ZN(n1350) );
  NR2D0BWP U176 ( .A1(n114), .A2(n77), .ZN(n1370) );
  CKND2D0BWP U177 ( .A1(row_id[1]), .A2(row_id[0]), .ZN(n66) );
  NR2D0BWP U178 ( .A1(n114), .A2(n66), .ZN(n1410) );
  CKND2D0BWP U179 ( .A1(row_id[2]), .A2(n5), .ZN(n115) );
  NR2D0BWP U180 ( .A1(n115), .A2(n112), .ZN(n1430) );
  NR2D0BWP U181 ( .A1(n115), .A2(n77), .ZN(n1450) );
  NR2D0BWP U182 ( .A1(n115), .A2(n66), .ZN(n1490) );
  INVD0BWP U183 ( .I(phase_row_id_d2[1]), .ZN(n7) );
  NR2D0BWP U184 ( .A1(n7), .A2(phase_row_id_d2[2]), .ZN(n15) );
  AOI21D0BWP U185 ( .A1(n15), .A2(p_out_vld_bus[2]), .B(phase_row_id_d2[0]), 
        .ZN(n14) );
  NR2D0BWP U186 ( .A1(phase_row_id_d2[2]), .A2(phase_row_id_d2[1]), .ZN(n17)
         );
  INVD0BWP U187 ( .I(phase_row_id_d2[2]), .ZN(n6) );
  NR2D0BWP U188 ( .A1(n6), .A2(phase_row_id_d2[1]), .ZN(n16) );
  AOI22D0BWP U189 ( .A1(n17), .A2(p_out_vld_bus[0]), .B1(n16), .B2(
        p_out_vld_bus[4]), .ZN(n13) );
  NR2D0BWP U190 ( .A1(n7), .A2(n6), .ZN(n21) );
  CKND2D0BWP U191 ( .A1(n21), .A2(p_out_vld_bus[6]), .ZN(n12) );
  CKND2D0BWP U192 ( .A1(n15), .A2(p_out_vld_bus[3]), .ZN(n9) );
  AOI22D0BWP U193 ( .A1(n17), .A2(p_out_vld_bus[1]), .B1(n16), .B2(
        p_out_vld_bus[5]), .ZN(n8) );
  ND3D0BWP U194 ( .A1(n9), .A2(n8), .A3(phase_row_id_d2[0]), .ZN(n10) );
  AOI32D0BWP U195 ( .A1(n21), .A2(dl_cur_state_d2), .A3(p_out_vld_bus[7]), 
        .B1(n10), .B2(dl_cur_state_d2), .ZN(n11) );
  AOI31D0BWP U196 ( .A1(n14), .A2(n13), .A3(n12), .B(n11), .ZN(n132) );
  AOI21D0BWP U197 ( .A1(n15), .A2(p_out_bus[2]), .B(phase_row_id_d2[0]), .ZN(
        n25) );
  AOI22D0BWP U198 ( .A1(n17), .A2(p_out_bus[0]), .B1(n16), .B2(p_out_bus[4]), 
        .ZN(n24) );
  CKND2D0BWP U199 ( .A1(n21), .A2(p_out_bus[6]), .ZN(n23) );
  CKND2D0BWP U200 ( .A1(n15), .A2(p_out_bus[3]), .ZN(n19) );
  AOI22D0BWP U201 ( .A1(n17), .A2(p_out_bus[1]), .B1(n16), .B2(p_out_bus[5]), 
        .ZN(n18) );
  ND3D0BWP U202 ( .A1(n19), .A2(n18), .A3(phase_row_id_d2[0]), .ZN(n20) );
  AOI32D0BWP U203 ( .A1(n21), .A2(dl_cur_state_d2), .A3(p_out_bus[7]), .B1(n20), .B2(dl_cur_state_d2), .ZN(n22) );
  AOI31D0BWP U204 ( .A1(n25), .A2(n24), .A3(n23), .B(n22), .ZN(n134) );
  CKND2D0BWP U205 ( .A1(dl_cur_state), .A2(n49), .ZN(n111) );
  NR2D0BWP U206 ( .A1(n26), .A2(n111), .ZN(n1230) );
  NR2D0BWP U207 ( .A1(n27), .A2(n111), .ZN(n1270) );
  NR2D0BWP U208 ( .A1(n117), .A2(n27), .ZN(n1290) );
  INVD0BWP U209 ( .I(rd_row_id_d1[1]), .ZN(n29) );
  NR2D0BWP U210 ( .A1(n29), .A2(rd_row_id_d1[2]), .ZN(n37) );
  AOI21D0BWP U211 ( .A1(n37), .A2(rd_vld_bus[2]), .B(rd_row_id_d1[0]), .ZN(n36) );
  NR2D0BWP U212 ( .A1(rd_row_id_d1[2]), .A2(rd_row_id_d1[1]), .ZN(n39) );
  INVD0BWP U213 ( .I(rd_row_id_d1[2]), .ZN(n28) );
  NR2D0BWP U214 ( .A1(n28), .A2(rd_row_id_d1[1]), .ZN(n38) );
  AOI22D0BWP U215 ( .A1(n39), .A2(rd_vld_bus[0]), .B1(n38), .B2(rd_vld_bus[4]), 
        .ZN(n35) );
  NR2D0BWP U216 ( .A1(n29), .A2(n28), .ZN(n43) );
  CKND2D0BWP U217 ( .A1(n43), .A2(rd_vld_bus[6]), .ZN(n34) );
  CKND2D0BWP U218 ( .A1(n37), .A2(rd_vld_bus[3]), .ZN(n31) );
  AOI22D0BWP U219 ( .A1(n39), .A2(rd_vld_bus[1]), .B1(n38), .B2(rd_vld_bus[5]), 
        .ZN(n30) );
  ND3D0BWP U220 ( .A1(n31), .A2(n30), .A3(rd_row_id_d1[0]), .ZN(n32) );
  AOI32D0BWP U221 ( .A1(n43), .A2(ul_cur_state_d1_0_), .A3(rd_vld_bus[7]), 
        .B1(n32), .B2(ul_cur_state_d1_0_), .ZN(n33) );
  AOI31D0BWP U222 ( .A1(n36), .A2(n35), .A3(n34), .B(n33), .ZN(n870) );
  AOI21D0BWP U223 ( .A1(n37), .A2(rd_data_out_bus[2]), .B(rd_row_id_d1[0]), 
        .ZN(n47) );
  AOI22D0BWP U224 ( .A1(n39), .A2(rd_data_out_bus[0]), .B1(n38), .B2(
        rd_data_out_bus[4]), .ZN(n46) );
  CKND2D0BWP U225 ( .A1(n43), .A2(rd_data_out_bus[6]), .ZN(n45) );
  CKND2D0BWP U226 ( .A1(n37), .A2(rd_data_out_bus[3]), .ZN(n41) );
  AOI22D0BWP U227 ( .A1(n39), .A2(rd_data_out_bus[1]), .B1(n38), .B2(
        rd_data_out_bus[5]), .ZN(n40) );
  ND3D0BWP U228 ( .A1(n41), .A2(n40), .A3(rd_row_id_d1[0]), .ZN(n42) );
  AOI32D0BWP U229 ( .A1(n43), .A2(ul_cur_state_d1_0_), .A3(rd_data_out_bus[7]), 
        .B1(n42), .B2(ul_cur_state_d1_0_), .ZN(n44) );
  AOI31D0BWP U230 ( .A1(n47), .A2(n46), .A3(n45), .B(n44), .ZN(n90) );
  CKND2D0BWP U231 ( .A1(n48), .A2(phase_row_id[0]), .ZN(n50) );
  CKND2D0BWP U232 ( .A1(dl_cur_state), .A2(n50), .ZN(n51) );
  OAI22D0BWP U233 ( .A1(n50), .A2(n111), .B1(n49), .B2(n51), .ZN(n81) );
  IAO21D0BWP U234 ( .A1(phase_row_id[0]), .A2(n56), .B(n51), .ZN(n82) );
  INVD0BWP U235 ( .I(n60), .ZN(n59) );
  CKND2D0BWP U236 ( .A1(n59), .A2(phase_col_id[2]), .ZN(n57) );
  INVD0BWP U237 ( .I(phase_col_id[3]), .ZN(n55) );
  NR2D0BWP U238 ( .A1(n57), .A2(n55), .ZN(n54) );
  INVD0BWP U239 ( .I(n54), .ZN(n52) );
  AOI221D0BWP U240 ( .A1(phase_col_id[4]), .A2(n54), .B1(n53), .B2(n52), .C(
        n56), .ZN(n1210) );
  AOI211D0BWP U241 ( .A1(n55), .A2(n57), .B(n54), .C(n56), .ZN(n120) );
  INVD0BWP U242 ( .I(n56), .ZN(n58) );
  OA211D0BWP U243 ( .A1(n59), .A2(phase_col_id[2]), .B(n58), .C(n57), .Z(n1190) );
  OA211D0BWP U244 ( .A1(phase_col_id[0]), .A2(phase_col_id[1]), .B(
        dl_cur_state), .C(n60), .Z(n118) );
  INVD0BWP U245 ( .I(p_en_d2), .ZN(n62) );
  OAI31D0BWP U246 ( .A1(dl_cur_state), .A2(p_en_d1), .A3(n62), .B(n61), .ZN(
        dl_next_state) );
  INR2D0BWP U247 ( .A1(dl_cur_state), .B1(phase_col_id[0]), .ZN(n1170) );
  INVD0BWP U248 ( .I(col_id[3]), .ZN(n101) );
  ND4D0BWP U249 ( .A1(n101), .A2(col_id[8]), .A3(col_id[7]), .A4(col_id[5]), 
        .ZN(n64) );
  CKND2D0BWP U250 ( .A1(col_id[0]), .A2(col_id[1]), .ZN(n104) );
  OR4D0BWP U251 ( .A1(col_id[6]), .A2(col_id[2]), .A3(col_id[4]), .A4(n104), 
        .Z(n63) );
  NR2D0BWP U252 ( .A1(n64), .A2(n63), .ZN(n67) );
  IND3D0BWP U253 ( .A1(n66), .B1(n67), .B2(row_id[2]), .ZN(n109) );
  CKND2D0BWP U254 ( .A1(ul_cur_state[0]), .A2(n109), .ZN(n106) );
  NR2D0BWP U255 ( .A1(n108), .A2(n67), .ZN(n105) );
  OAI32D0BWP U256 ( .A1(n106), .A2(n105), .A3(n66), .B1(n65), .B2(n106), .ZN(
        n86) );
  AOI21D0BWP U257 ( .A1(ul_cur_state[0]), .A2(n91), .B(n105), .ZN(n89) );
  IND2D0BWP U258 ( .A1(n77), .B1(n67), .ZN(n78) );
  OAI22D0BWP U259 ( .A1(n89), .A2(n116), .B1(n108), .B2(n78), .ZN(n87) );
  AOI21D0BWP U260 ( .A1(n105), .A2(n91), .B(n89), .ZN(n88) );
  INVD0BWP U261 ( .I(n104), .ZN(n103) );
  CKND2D0BWP U262 ( .A1(col_id[2]), .A2(n103), .ZN(n102) );
  NR2D0BWP U263 ( .A1(n102), .A2(n101), .ZN(n100) );
  CKND2D0BWP U264 ( .A1(col_id[4]), .A2(n100), .ZN(n98) );
  INVD0BWP U265 ( .I(col_id[5]), .ZN(n97) );
  NR2D0BWP U266 ( .A1(n98), .A2(n97), .ZN(n96) );
  CKND2D0BWP U267 ( .A1(col_id[6]), .A2(n96), .ZN(n95) );
  INVD0BWP U268 ( .I(col_id[7]), .ZN(n94) );
  NR2D0BWP U269 ( .A1(n95), .A2(n94), .ZN(n93) );
  OAI21D0BWP U270 ( .A1(col_id[8]), .A2(n93), .B(n105), .ZN(n92) );
  AOI21D0BWP U271 ( .A1(col_id[8]), .A2(n93), .B(n92), .ZN(n76) );
  INVD0BWP U272 ( .I(n105), .ZN(n99) );
  AOI211D0BWP U273 ( .A1(n94), .A2(n95), .B(n93), .C(n99), .ZN(n75) );
  OA211D0BWP U274 ( .A1(col_id[6]), .A2(n96), .B(n105), .C(n95), .Z(n74) );
  AOI211D0BWP U275 ( .A1(n97), .A2(n98), .B(n96), .C(n99), .ZN(n73) );
  OA211D0BWP U276 ( .A1(col_id[4]), .A2(n100), .B(n105), .C(n98), .Z(n72) );
  AOI211D0BWP U277 ( .A1(n101), .A2(n102), .B(n100), .C(n99), .ZN(n71) );
  OA211D0BWP U278 ( .A1(col_id[2]), .A2(n103), .B(n105), .C(n102), .Z(n70) );
  OA211D0BWP U279 ( .A1(col_id[0]), .A2(col_id[1]), .B(n105), .C(n104), .Z(n69) );
  NR2D0BWP U280 ( .A1(ul_cur_state[0]), .A2(en_g_d1), .ZN(n107) );
  OAI21D0BWP U281 ( .A1(ul_cur_state[1]), .A2(n107), .B(n106), .ZN(n85) );
  OAI21D0BWP U282 ( .A1(n109), .A2(n108), .B(n113), .ZN(n84) );
  NR3D0BWP U283 ( .A1(phase_row_id[0]), .A2(n110), .A3(n117), .ZN(n128) );
  NR3D0BWP U284 ( .A1(phase_row_id[0]), .A2(phase_row_id[2]), .A3(n111), .ZN(
        n122) );
  NR3D0BWP U285 ( .A1(phase_row_id[0]), .A2(n111), .A3(n110), .ZN(n126) );
  NR3D0BWP U286 ( .A1(row_id[2]), .A2(n113), .A3(n112), .ZN(n136) );
  NR3D0BWP U287 ( .A1(row_id[0]), .A2(n116), .A3(n114), .ZN(n1390) );
  NR3D0BWP U288 ( .A1(row_id[0]), .A2(n116), .A3(n115), .ZN(n1470) );
  NR3D0BWP U289 ( .A1(phase_row_id[0]), .A2(phase_row_id[2]), .A3(n117), .ZN(
        n124) );
endmodule


module local_ctrl_row ( VSS, H_VDD, clk, rstn, wr_vld, wr_data_in, rd_rdy, p_code_vld, 
        p_code, cp_ctrl, rd_vld, rd_data_out, p_out_vld, p_out );
	inout H_VDD;
	inout VSS;
  input [19:0] p_code;
  output [419:0] cp_ctrl;
  input clk, rstn, wr_vld, wr_data_in, rd_rdy, p_code_vld;
  output rd_vld, rd_data_out, p_out_vld, p_out;
  wire   n10280, n1041, n10420, n1043, n10440, n1045, n1046, n1047, n10480,
         n10700, n513, n514, n515, n516, n517, n518, n519, n520, n521, n2666,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429;
  wire   [8:0] cnt;
  wire   [8:0] phase_cnt;

  DFCNQD1BWP cnt_reg_0_ ( .D(n521), .CP(clk), .CDN(rstn), .Q(cnt[0]) );
  DFCNQD1BWP cnt_reg_1_ ( .D(n520), .CP(clk), .CDN(rstn), .Q(cnt[1]) );
  DFCNQD1BWP cnt_reg_2_ ( .D(n519), .CP(clk), .CDN(rstn), .Q(cnt[2]) );
  DFCNQD1BWP cnt_reg_3_ ( .D(n518), .CP(clk), .CDN(rstn), .Q(cnt[3]) );
  DFCNQD1BWP cnt_reg_4_ ( .D(n517), .CP(clk), .CDN(rstn), .Q(cnt[4]) );
  DFCNQD1BWP cnt_reg_5_ ( .D(n516), .CP(clk), .CDN(rstn), .Q(cnt[5]) );
  DFCNQD1BWP cnt_reg_6_ ( .D(n515), .CP(clk), .CDN(rstn), .Q(cnt[6]) );
  DFCNQD1BWP cnt_reg_7_ ( .D(n514), .CP(clk), .CDN(rstn), .Q(cnt[7]) );
  DFCNQD1BWP cnt_reg_8_ ( .D(n513), .CP(clk), .CDN(rstn), .Q(cnt[8]) );
  EDFCNQD1BWP phase_cnt_reg_0_ ( .D(n2666), .E(p_code_vld), .CP(clk), .CDN(
        rstn), .Q(phase_cnt[0]) );
  EDFCNQD1BWP phase_cnt_reg_1_ ( .D(n1041), .E(p_code_vld), .CP(clk), .CDN(
        rstn), .Q(phase_cnt[1]) );
  EDFCNQD1BWP phase_cnt_reg_2_ ( .D(n10420), .E(p_code_vld), .CP(clk), .CDN(
        rstn), .Q(phase_cnt[2]) );
  EDFCNQD1BWP phase_cnt_reg_3_ ( .D(n1043), .E(p_code_vld), .CP(clk), .CDN(
        rstn), .Q(phase_cnt[3]) );
  EDFCNQD1BWP phase_cnt_reg_4_ ( .D(n10440), .E(p_code_vld), .CP(clk), .CDN(
        rstn), .Q(phase_cnt[4]) );
  EDFCNQD1BWP phase_cnt_reg_5_ ( .D(n1045), .E(p_code_vld), .CP(clk), .CDN(
        rstn), .Q(phase_cnt[5]) );
  EDFCNQD1BWP phase_cnt_reg_6_ ( .D(n1046), .E(p_code_vld), .CP(clk), .CDN(
        rstn), .Q(phase_cnt[6]) );
  EDFCNQD1BWP phase_cnt_reg_7_ ( .D(n1047), .E(p_code_vld), .CP(clk), .CDN(
        rstn), .Q(phase_cnt[7]) );
  EDFCNQD1BWP phase_cnt_reg_8_ ( .D(n10480), .E(p_code_vld), .CP(clk), .CDN(
        rstn), .Q(phase_cnt[8]) );
  EDFCNQD1BWP rd_data_out_reg ( .D(n10280), .E(rd_rdy), .CP(clk), .CDN(rstn), 
        .Q(rd_data_out) );
  EDFCNQD1BWP cp_ctrl_reg_419_ ( .D(wr_data_in), .E(n416), .CP(clk), .CDN(rstn), .Q(cp_ctrl[419]) );
  DFCNQD1BWP rd_vld_reg ( .D(rd_rdy), .CP(clk), .CDN(rstn), .Q(rd_vld) );
  DFCNQD1BWP p_out_reg ( .D(n10700), .CP(clk), .CDN(rstn), .Q(p_out) );
  DFCNQD1BWP p_out_vld_reg ( .D(p_code_vld), .CP(clk), .CDN(rstn), .Q(
        p_out_vld) );
  EDFCNQD1BWP cp_ctrl_reg_320_ ( .D(cp_ctrl[321]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[320]) );
  EDFCNQD1BWP cp_ctrl_reg_78_ ( .D(cp_ctrl[79]), .E(n416), .CP(clk), .CDN(rstn), .Q(cp_ctrl[78]) );
  EDFCNQD1BWP cp_ctrl_reg_126_ ( .D(cp_ctrl[127]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[126]) );
  EDFCNQD1BWP cp_ctrl_reg_12_ ( .D(cp_ctrl[13]), .E(n416), .CP(clk), .CDN(rstn), .Q(cp_ctrl[12]) );
  EDFCNQD1BWP cp_ctrl_reg_22_ ( .D(cp_ctrl[23]), .E(n416), .CP(clk), .CDN(rstn), .Q(cp_ctrl[22]) );
  EDFCNQD1BWP cp_ctrl_reg_268_ ( .D(cp_ctrl[269]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[268]) );
  EDFCNQD1BWP cp_ctrl_reg_387_ ( .D(cp_ctrl[388]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[387]) );
  EDFCNQD1BWP cp_ctrl_reg_263_ ( .D(cp_ctrl[264]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[263]) );
  EDFCNQD1BWP cp_ctrl_reg_406_ ( .D(cp_ctrl[407]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[406]) );
  EDFCNQD1BWP cp_ctrl_reg_47_ ( .D(cp_ctrl[48]), .E(n416), .CP(clk), .CDN(rstn), .Q(cp_ctrl[47]) );
  EDFCNQD1BWP cp_ctrl_reg_69_ ( .D(cp_ctrl[70]), .E(n416), .CP(clk), .CDN(rstn), .Q(cp_ctrl[69]) );
  EDFCNQD1BWP cp_ctrl_reg_109_ ( .D(cp_ctrl[110]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[109]) );
  EDFCNQD1BWP cp_ctrl_reg_241_ ( .D(cp_ctrl[242]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[241]) );
  EDFCNQD1BWP cp_ctrl_reg_245_ ( .D(cp_ctrl[246]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[245]) );
  EDFCNQD1BWP cp_ctrl_reg_286_ ( .D(cp_ctrl[287]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[286]) );
  EDFCNQD1BWP cp_ctrl_reg_369_ ( .D(cp_ctrl[370]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[369]) );
  EDFCNQD1BWP cp_ctrl_reg_279_ ( .D(cp_ctrl[280]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[279]) );
  EDFCNQD1BWP cp_ctrl_reg_243_ ( .D(cp_ctrl[244]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[243]) );
  EDFCNQD1BWP cp_ctrl_reg_371_ ( .D(cp_ctrl[372]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[371]) );
  EDFCNQD1BWP cp_ctrl_reg_108_ ( .D(cp_ctrl[109]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[108]) );
  EDFCNQD1BWP cp_ctrl_reg_53_ ( .D(cp_ctrl[54]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[53]) );
  EDFCNQD1BWP cp_ctrl_reg_285_ ( .D(cp_ctrl[286]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[285]) );
  EDFCNQD1BWP cp_ctrl_reg_248_ ( .D(cp_ctrl[249]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[248]) );
  EDFCNQD1BWP cp_ctrl_reg_239_ ( .D(cp_ctrl[240]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[239]) );
  EDFCNQD1BWP cp_ctrl_reg_219_ ( .D(cp_ctrl[220]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[219]) );
  EDFCNQD1BWP cp_ctrl_reg_410_ ( .D(cp_ctrl[411]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[410]) );
  EDFCNQD1BWP cp_ctrl_reg_152_ ( .D(cp_ctrl[153]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[152]) );
  EDFCNQD1BWP cp_ctrl_reg_44_ ( .D(cp_ctrl[45]), .E(n417), .CP(clk), .CDN(rstn), .Q(cp_ctrl[44]) );
  EDFCNQD1BWP cp_ctrl_reg_56_ ( .D(cp_ctrl[57]), .E(n417), .CP(clk), .CDN(rstn), .Q(cp_ctrl[56]) );
  EDFCNQD1BWP cp_ctrl_reg_114_ ( .D(cp_ctrl[115]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[114]) );
  EDFCNQD1BWP cp_ctrl_reg_148_ ( .D(cp_ctrl[149]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[148]) );
  EDFCNQD1BWP cp_ctrl_reg_156_ ( .D(cp_ctrl[157]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[156]) );
  EDFCNQD1BWP cp_ctrl_reg_250_ ( .D(cp_ctrl[251]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[250]) );
  EDFCNQD1BWP cp_ctrl_reg_1_ ( .D(cp_ctrl[2]), .E(n417), .CP(clk), .CDN(rstn), 
        .Q(cp_ctrl[1]) );
  EDFCNQD1BWP cp_ctrl_reg_74_ ( .D(cp_ctrl[75]), .E(n417), .CP(clk), .CDN(rstn), .Q(cp_ctrl[74]) );
  EDFCNQD1BWP cp_ctrl_reg_122_ ( .D(cp_ctrl[123]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[122]) );
  EDFCNQD1BWP cp_ctrl_reg_202_ ( .D(cp_ctrl[203]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[202]) );
  EDFCNQD1BWP cp_ctrl_reg_210_ ( .D(cp_ctrl[211]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[210]) );
  EDFCNQD1BWP cp_ctrl_reg_226_ ( .D(cp_ctrl[227]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[226]) );
  EDFCNQD1BWP cp_ctrl_reg_330_ ( .D(cp_ctrl[331]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[330]) );
  EDFCNQD1BWP cp_ctrl_reg_354_ ( .D(cp_ctrl[355]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[354]) );
  EDFCNQD1BWP cp_ctrl_reg_206_ ( .D(cp_ctrl[207]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[206]) );
  EDFCNQD1BWP cp_ctrl_reg_374_ ( .D(cp_ctrl[375]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[374]) );
  EDFCNQD1BWP cp_ctrl_reg_259_ ( .D(cp_ctrl[260]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[259]) );
  EDFCNQD1BWP cp_ctrl_reg_198_ ( .D(cp_ctrl[199]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[198]) );
  EDFCNQD1BWP cp_ctrl_reg_4_ ( .D(cp_ctrl[5]), .E(n418), .CP(clk), .CDN(rstn), 
        .Q(cp_ctrl[4]) );
  EDFCNQD1BWP cp_ctrl_reg_367_ ( .D(cp_ctrl[368]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[367]) );
  EDFCNQD1BWP cp_ctrl_reg_51_ ( .D(cp_ctrl[52]), .E(n418), .CP(clk), .CDN(rstn), .Q(cp_ctrl[51]) );
  EDFCNQD1BWP cp_ctrl_reg_283_ ( .D(cp_ctrl[284]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[283]) );
  EDFCNQD1BWP cp_ctrl_reg_80_ ( .D(cp_ctrl[81]), .E(n418), .CP(clk), .CDN(rstn), .Q(cp_ctrl[80]) );
  EDFCNQD1BWP cp_ctrl_reg_128_ ( .D(cp_ctrl[129]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[128]) );
  EDFCNQD1BWP cp_ctrl_reg_319_ ( .D(cp_ctrl[320]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[319]) );
  EDFCNQD1BWP cp_ctrl_reg_389_ ( .D(cp_ctrl[390]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[389]) );
  EDFCNQD1BWP cp_ctrl_reg_397_ ( .D(cp_ctrl[398]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[397]) );
  EDFCNQD1BWP cp_ctrl_reg_39_ ( .D(cp_ctrl[40]), .E(n419), .CP(clk), .CDN(rstn), .Q(cp_ctrl[39]) );
  EDFCNQD1BWP cp_ctrl_reg_303_ ( .D(cp_ctrl[304]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[303]) );
  EDFCNQD1BWP cp_ctrl_reg_7_ ( .D(cp_ctrl[8]), .E(n419), .CP(clk), .CDN(rstn), 
        .Q(cp_ctrl[7]) );
  EDFCNQD1BWP cp_ctrl_reg_32_ ( .D(cp_ctrl[33]), .E(n419), .CP(clk), .CDN(rstn), .Q(cp_ctrl[32]) );
  EDFCNQD1BWP cp_ctrl_reg_64_ ( .D(cp_ctrl[65]), .E(n419), .CP(clk), .CDN(rstn), .Q(cp_ctrl[64]) );
  EDFCNQD1BWP cp_ctrl_reg_112_ ( .D(cp_ctrl[113]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[112]) );
  EDFCNQD1BWP cp_ctrl_reg_162_ ( .D(cp_ctrl[163]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[162]) );
  EDFCNQD1BWP cp_ctrl_reg_213_ ( .D(cp_ctrl[214]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[213]) );
  EDFCNQD1BWP cp_ctrl_reg_229_ ( .D(cp_ctrl[230]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[229]) );
  EDFCNQD1BWP cp_ctrl_reg_296_ ( .D(cp_ctrl[297]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[296]) );
  EDFCNQD1BWP cp_ctrl_reg_333_ ( .D(cp_ctrl[334]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[333]) );
  EDFCNQD1BWP cp_ctrl_reg_342_ ( .D(cp_ctrl[343]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[342]) );
  EDFCNQD1BWP cp_ctrl_reg_377_ ( .D(cp_ctrl[378]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[377]) );
  EDFCNQD1BWP cp_ctrl_reg_395_ ( .D(cp_ctrl[396]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[395]) );
  EDFCNQD1BWP cp_ctrl_reg_416_ ( .D(cp_ctrl[417]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[416]) );
  EDFCNQD1BWP cp_ctrl_reg_418_ ( .D(cp_ctrl[419]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[418]) );
  EDFCNQD1BWP cp_ctrl_reg_272_ ( .D(cp_ctrl[273]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[272]) );
  EDFCNQD1BWP cp_ctrl_reg_24_ ( .D(cp_ctrl[25]), .E(n420), .CP(clk), .CDN(rstn), .Q(cp_ctrl[24]) );
  EDFCNQD1BWP cp_ctrl_reg_383_ ( .D(cp_ctrl[384]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[383]) );
  EDFCNQD1BWP cp_ctrl_reg_14_ ( .D(cp_ctrl[15]), .E(n420), .CP(clk), .CDN(rstn), .Q(cp_ctrl[14]) );
  EDFCNQD1BWP cp_ctrl_reg_16_ ( .D(cp_ctrl[17]), .E(n420), .CP(clk), .CDN(rstn), .Q(cp_ctrl[16]) );
  EDFCNQD1BWP cp_ctrl_reg_195_ ( .D(cp_ctrl[196]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[195]) );
  EDFCNQD1BWP cp_ctrl_reg_235_ ( .D(cp_ctrl[236]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[235]) );
  EDFCNQD1BWP cp_ctrl_reg_270_ ( .D(cp_ctrl[271]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[270]) );
  EDFCNQD1BWP cp_ctrl_reg_215_ ( .D(cp_ctrl[216]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[215]) );
  EDFCNQD1BWP cp_ctrl_reg_399_ ( .D(cp_ctrl[400]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[399]) );
  EDFCNQD1BWP cp_ctrl_reg_401_ ( .D(cp_ctrl[402]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[401]) );
  EDFCNQD1BWP cp_ctrl_reg_403_ ( .D(cp_ctrl[404]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[403]) );
  EDFCNQD1BWP cp_ctrl_reg_19_ ( .D(cp_ctrl[20]), .E(n421), .CP(clk), .CDN(rstn), .Q(cp_ctrl[19]) );
  EDFCNQD1BWP cp_ctrl_reg_21_ ( .D(cp_ctrl[22]), .E(n421), .CP(clk), .CDN(rstn), .Q(cp_ctrl[21]) );
  EDFCNQD1BWP cp_ctrl_reg_29_ ( .D(cp_ctrl[30]), .E(n421), .CP(clk), .CDN(rstn), .Q(cp_ctrl[29]) );
  EDFCNQD1BWP cp_ctrl_reg_37_ ( .D(cp_ctrl[38]), .E(n421), .CP(clk), .CDN(rstn), .Q(cp_ctrl[37]) );
  EDFCNQD1BWP cp_ctrl_reg_49_ ( .D(cp_ctrl[50]), .E(n421), .CP(clk), .CDN(rstn), .Q(cp_ctrl[49]) );
  EDFCNQD1BWP cp_ctrl_reg_61_ ( .D(cp_ctrl[62]), .E(n421), .CP(clk), .CDN(rstn), .Q(cp_ctrl[61]) );
  EDFCNQD1BWP cp_ctrl_reg_83_ ( .D(cp_ctrl[84]), .E(n421), .CP(clk), .CDN(rstn), .Q(cp_ctrl[83]) );
  EDFCNQD1BWP cp_ctrl_reg_87_ ( .D(cp_ctrl[88]), .E(n421), .CP(clk), .CDN(rstn), .Q(cp_ctrl[87]) );
  EDFCNQD1BWP cp_ctrl_reg_91_ ( .D(cp_ctrl[92]), .E(n421), .CP(clk), .CDN(rstn), .Q(cp_ctrl[91]) );
  EDFCNQD1BWP cp_ctrl_reg_95_ ( .D(cp_ctrl[96]), .E(n423), .CP(clk), .CDN(rstn), .Q(cp_ctrl[95]) );
  EDFCNQD1BWP cp_ctrl_reg_99_ ( .D(cp_ctrl[100]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[99]) );
  EDFCNQD1BWP cp_ctrl_reg_103_ ( .D(cp_ctrl[104]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[103]) );
  EDFCNQD1BWP cp_ctrl_reg_131_ ( .D(cp_ctrl[132]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[131]) );
  EDFCNQD1BWP cp_ctrl_reg_133_ ( .D(cp_ctrl[134]), .E(n429), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[133]) );
  EDFCNQD1BWP cp_ctrl_reg_137_ ( .D(cp_ctrl[138]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[137]) );
  EDFCNQD1BWP cp_ctrl_reg_141_ ( .D(cp_ctrl[142]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[141]) );
  EDFCNQD1BWP cp_ctrl_reg_145_ ( .D(cp_ctrl[146]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[145]) );
  EDFCNQD1BWP cp_ctrl_reg_165_ ( .D(cp_ctrl[166]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[165]) );
  EDFCNQD1BWP cp_ctrl_reg_169_ ( .D(cp_ctrl[170]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[169]) );
  EDFCNQD1BWP cp_ctrl_reg_173_ ( .D(cp_ctrl[174]), .E(n429), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[173]) );
  EDFCNQD1BWP cp_ctrl_reg_177_ ( .D(cp_ctrl[178]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[177]) );
  EDFCNQD1BWP cp_ctrl_reg_181_ ( .D(cp_ctrl[182]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[181]) );
  EDFCNQD1BWP cp_ctrl_reg_185_ ( .D(cp_ctrl[186]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[185]) );
  EDFCNQD1BWP cp_ctrl_reg_189_ ( .D(cp_ctrl[190]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[189]) );
  EDFCNQD1BWP cp_ctrl_reg_192_ ( .D(cp_ctrl[193]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[192]) );
  EDFCNQD1BWP cp_ctrl_reg_222_ ( .D(cp_ctrl[223]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[222]) );
  EDFCNQD1BWP cp_ctrl_reg_231_ ( .D(cp_ctrl[232]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[231]) );
  EDFCNQD1BWP cp_ctrl_reg_234_ ( .D(cp_ctrl[235]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[234]) );
  EDFCNQD1BWP cp_ctrl_reg_276_ ( .D(cp_ctrl[277]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[276]) );
  EDFCNQD1BWP cp_ctrl_reg_281_ ( .D(cp_ctrl[282]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[281]) );
  EDFCNQD1BWP cp_ctrl_reg_293_ ( .D(cp_ctrl[294]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[293]) );
  EDFCNQD1BWP cp_ctrl_reg_301_ ( .D(cp_ctrl[302]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[301]) );
  EDFCNQD1BWP cp_ctrl_reg_309_ ( .D(cp_ctrl[310]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[309]) );
  EDFCNQD1BWP cp_ctrl_reg_313_ ( .D(cp_ctrl[314]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[313]) );
  EDFCNQD1BWP cp_ctrl_reg_317_ ( .D(cp_ctrl[318]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[317]) );
  EDFCNQD1BWP cp_ctrl_reg_326_ ( .D(cp_ctrl[327]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[326]) );
  EDFCNQD1BWP cp_ctrl_reg_335_ ( .D(cp_ctrl[336]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[335]) );
  EDFCNQD1BWP cp_ctrl_reg_350_ ( .D(cp_ctrl[351]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[350]) );
  EDFCNQD1BWP cp_ctrl_reg_364_ ( .D(cp_ctrl[365]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[364]) );
  EDFCNQD1BWP cp_ctrl_reg_379_ ( .D(cp_ctrl[380]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[379]) );
  EDFCNQD1BWP cp_ctrl_reg_382_ ( .D(cp_ctrl[383]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[382]) );
  EDFCNQD1BWP cp_ctrl_reg_392_ ( .D(cp_ctrl[393]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[392]) );
  EDFCNQD1BWP cp_ctrl_reg_408_ ( .D(cp_ctrl[409]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[408]) );
  EDFCNQD1BWP cp_ctrl_reg_413_ ( .D(cp_ctrl[414]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[413]) );
  EDFCNQD1BWP cp_ctrl_reg_67_ ( .D(cp_ctrl[68]), .E(n423), .CP(clk), .CDN(rstn), .Q(cp_ctrl[67]) );
  EDFCNQD1BWP cp_ctrl_reg_164_ ( .D(cp_ctrl[165]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[164]) );
  EDFCNQD1BWP cp_ctrl_reg_254_ ( .D(cp_ctrl[255]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[254]) );
  EDFCNQD1BWP cp_ctrl_reg_256_ ( .D(cp_ctrl[257]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[256]) );
  EDFCNQD1BWP cp_ctrl_reg_262_ ( .D(cp_ctrl[263]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[262]) );
  EDFCNQD1BWP cp_ctrl_reg_345_ ( .D(cp_ctrl[346]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[345]) );
  EDFCNQD1BWP cp_ctrl_reg_358_ ( .D(cp_ctrl[359]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[358]) );
  EDFCNQD1BWP cp_ctrl_reg_412_ ( .D(cp_ctrl[413]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[412]) );
  EDFCNQD1BWP cp_ctrl_reg_107_ ( .D(cp_ctrl[108]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[107]) );
  EDFCNQD1BWP cp_ctrl_reg_28_ ( .D(cp_ctrl[29]), .E(n424), .CP(clk), .CDN(rstn), .Q(cp_ctrl[28]) );
  EDFCNQD1BWP cp_ctrl_reg_258_ ( .D(cp_ctrl[259]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[258]) );
  EDFCNQD1BWP cp_ctrl_reg_363_ ( .D(cp_ctrl[364]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[363]) );
  EDFCNQD1BWP cp_ctrl_reg_362_ ( .D(cp_ctrl[363]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[362]) );
  EDFCNQD1BWP cp_ctrl_reg_349_ ( .D(cp_ctrl[350]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[349]) );
  EDFCNQD1BWP cp_ctrl_reg_321_ ( .D(cp_ctrl[322]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[321]) );
  EDFCNQD1BWP cp_ctrl_reg_273_ ( .D(cp_ctrl[274]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[273]) );
  EDFCNQD1BWP cp_ctrl_reg_274_ ( .D(cp_ctrl[275]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[274]) );
  EDFCNQD1BWP cp_ctrl_reg_25_ ( .D(cp_ctrl[26]), .E(n425), .CP(clk), .CDN(rstn), .Q(cp_ctrl[25]) );
  EDFCNQD1BWP cp_ctrl_reg_26_ ( .D(cp_ctrl[27]), .E(n425), .CP(clk), .CDN(rstn), .Q(cp_ctrl[26]) );
  EDFCNQD1BWP cp_ctrl_reg_52_ ( .D(cp_ctrl[53]), .E(n425), .CP(clk), .CDN(rstn), .Q(cp_ctrl[52]) );
  EDFCNQD1BWP cp_ctrl_reg_71_ ( .D(cp_ctrl[72]), .E(n425), .CP(clk), .CDN(rstn), .Q(cp_ctrl[71]) );
  EDFCNQD1BWP cp_ctrl_reg_70_ ( .D(cp_ctrl[71]), .E(n425), .CP(clk), .CDN(rstn), .Q(cp_ctrl[70]) );
  EDFCNQD1BWP cp_ctrl_reg_111_ ( .D(cp_ctrl[112]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[111]) );
  EDFCNQD1BWP cp_ctrl_reg_110_ ( .D(cp_ctrl[111]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[110]) );
  EDFCNQD1BWP cp_ctrl_reg_242_ ( .D(cp_ctrl[243]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[242]) );
  EDFCNQD1BWP cp_ctrl_reg_247_ ( .D(cp_ctrl[248]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[247]) );
  EDFCNQD1BWP cp_ctrl_reg_246_ ( .D(cp_ctrl[247]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[246]) );
  EDFCNQD1BWP cp_ctrl_reg_284_ ( .D(cp_ctrl[285]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[284]) );
  EDFCNQD1BWP cp_ctrl_reg_287_ ( .D(cp_ctrl[288]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[287]) );
  EDFCNQD1BWP cp_ctrl_reg_370_ ( .D(cp_ctrl[371]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[370]) );
  EDFCNQD1BWP cp_ctrl_reg_384_ ( .D(cp_ctrl[385]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[384]) );
  EDFCNQD1BWP cp_ctrl_reg_13_ ( .D(cp_ctrl[14]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[13]) );
  EDFCNQD1BWP cp_ctrl_reg_15_ ( .D(cp_ctrl[16]), .E(n426), .CP(clk), .CDN(rstn), .Q(cp_ctrl[15]) );
  EDFCNQD1BWP cp_ctrl_reg_35_ ( .D(cp_ctrl[36]), .E(n427), .CP(clk), .CDN(rstn), .Q(cp_ctrl[35]) );
  EDFCNQD1BWP cp_ctrl_reg_36_ ( .D(cp_ctrl[37]), .E(n428), .CP(clk), .CDN(rstn), .Q(cp_ctrl[36]) );
  EDFCNQD1BWP cp_ctrl_reg_43_ ( .D(cp_ctrl[44]), .E(n417), .CP(clk), .CDN(rstn), .Q(cp_ctrl[43]) );
  EDFCNQD1BWP cp_ctrl_reg_75_ ( .D(cp_ctrl[76]), .E(n418), .CP(clk), .CDN(rstn), .Q(cp_ctrl[75]) );
  EDFCNQD1BWP cp_ctrl_reg_79_ ( .D(cp_ctrl[80]), .E(n419), .CP(clk), .CDN(rstn), .Q(cp_ctrl[79]) );
  EDFCNQD1BWP cp_ctrl_reg_115_ ( .D(cp_ctrl[116]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[115]) );
  EDFCNQD1BWP cp_ctrl_reg_123_ ( .D(cp_ctrl[124]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[123]) );
  EDFCNQD1BWP cp_ctrl_reg_127_ ( .D(cp_ctrl[128]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[127]) );
  EDFCNQD1BWP cp_ctrl_reg_155_ ( .D(cp_ctrl[156]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[155]) );
  EDFCNQD1BWP cp_ctrl_reg_203_ ( .D(cp_ctrl[204]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[203]) );
  EDFCNQD1BWP cp_ctrl_reg_211_ ( .D(cp_ctrl[212]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[211]) );
  EDFCNQD1BWP cp_ctrl_reg_212_ ( .D(cp_ctrl[213]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[212]) );
  EDFCNQD1BWP cp_ctrl_reg_227_ ( .D(cp_ctrl[228]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[227]) );
  EDFCNQD1BWP cp_ctrl_reg_228_ ( .D(cp_ctrl[229]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[228]) );
  EDFCNQD1BWP cp_ctrl_reg_251_ ( .D(cp_ctrl[252]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[251]) );
  EDFCNQD1BWP cp_ctrl_reg_252_ ( .D(cp_ctrl[253]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[252]) );
  EDFCNQD1BWP cp_ctrl_reg_269_ ( .D(cp_ctrl[270]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[269]) );
  EDFCNQD1BWP cp_ctrl_reg_271_ ( .D(cp_ctrl[272]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[271]) );
  EDFCNQD1BWP cp_ctrl_reg_291_ ( .D(cp_ctrl[292]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[291]) );
  EDFCNQD1BWP cp_ctrl_reg_292_ ( .D(cp_ctrl[293]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[292]) );
  EDFCNQD1BWP cp_ctrl_reg_299_ ( .D(cp_ctrl[300]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[299]) );
  EDFCNQD1BWP cp_ctrl_reg_300_ ( .D(cp_ctrl[301]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[300]) );
  EDFCNQD1BWP cp_ctrl_reg_307_ ( .D(cp_ctrl[308]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[307]) );
  EDFCNQD1BWP cp_ctrl_reg_308_ ( .D(cp_ctrl[309]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[308]) );
  EDFCNQD1BWP cp_ctrl_reg_331_ ( .D(cp_ctrl[332]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[331]) );
  EDFCNQD1BWP cp_ctrl_reg_332_ ( .D(cp_ctrl[333]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[332]) );
  EDFCNQD1BWP cp_ctrl_reg_355_ ( .D(cp_ctrl[356]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[355]) );
  EDFCNQD1BWP cp_ctrl_reg_356_ ( .D(cp_ctrl[357]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[356]) );
  EDFCNQD1BWP cp_ctrl_reg_160_ ( .D(cp_ctrl[161]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[160]) );
  EDFCNQD1BWP cp_ctrl_reg_161_ ( .D(cp_ctrl[162]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[161]) );
  EDFCNQD1BWP cp_ctrl_reg_207_ ( .D(cp_ctrl[208]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[207]) );
  EDFCNQD1BWP cp_ctrl_reg_216_ ( .D(cp_ctrl[217]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[216]) );
  EDFCNQD1BWP cp_ctrl_reg_217_ ( .D(cp_ctrl[218]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[217]) );
  EDFCNQD1BWP cp_ctrl_reg_218_ ( .D(cp_ctrl[219]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[218]) );
  EDFCNQD1BWP cp_ctrl_reg_390_ ( .D(cp_ctrl[391]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[390]) );
  EDFCNQD1BWP cp_ctrl_reg_391_ ( .D(cp_ctrl[392]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[391]) );
  EDFCNQD1BWP cp_ctrl_reg_398_ ( .D(cp_ctrl[399]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[398]) );
  EDFCNQD1BWP cp_ctrl_reg_17_ ( .D(cp_ctrl[18]), .E(n428), .CP(clk), .CDN(rstn), .Q(cp_ctrl[17]) );
  EDFCNQD1BWP cp_ctrl_reg_18_ ( .D(cp_ctrl[19]), .E(n428), .CP(clk), .CDN(rstn), .Q(cp_ctrl[18]) );
  EDFCNQD1BWP cp_ctrl_reg_40_ ( .D(cp_ctrl[41]), .E(n428), .CP(clk), .CDN(rstn), .Q(cp_ctrl[40]) );
  EDFCNQD1BWP cp_ctrl_reg_240_ ( .D(cp_ctrl[241]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[240]) );
  EDFCNQD1BWP cp_ctrl_reg_304_ ( .D(cp_ctrl[305]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[304]) );
  EDFCNQD1BWP cp_ctrl_reg_388_ ( .D(cp_ctrl[389]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[388]) );
  EDFCNQD1BWP cp_ctrl_reg_402_ ( .D(cp_ctrl[403]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[402]) );
  EDFCNQD1BWP cp_ctrl_reg_2_ ( .D(cp_ctrl[3]), .E(n428), .CP(clk), .CDN(rstn), 
        .Q(cp_ctrl[2]) );
  EDFCNQD1BWP cp_ctrl_reg_3_ ( .D(cp_ctrl[4]), .E(n428), .CP(clk), .CDN(rstn), 
        .Q(cp_ctrl[3]) );
  EDFCNQD1BWP cp_ctrl_reg_5_ ( .D(cp_ctrl[6]), .E(n428), .CP(clk), .CDN(rstn), 
        .Q(cp_ctrl[5]) );
  EDFCNQD1BWP cp_ctrl_reg_6_ ( .D(cp_ctrl[7]), .E(n428), .CP(clk), .CDN(rstn), 
        .Q(cp_ctrl[6]) );
  EDFCNQD1BWP cp_ctrl_reg_23_ ( .D(cp_ctrl[24]), .E(n428), .CP(clk), .CDN(rstn), .Q(cp_ctrl[23]) );
  EDFCNQD1BWP cp_ctrl_reg_30_ ( .D(cp_ctrl[31]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[30]) );
  EDFCNQD1BWP cp_ctrl_reg_31_ ( .D(cp_ctrl[32]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[31]) );
  EDFCNQD1BWP cp_ctrl_reg_38_ ( .D(cp_ctrl[39]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[38]) );
  EDFCNQD1BWP cp_ctrl_reg_50_ ( .D(cp_ctrl[51]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[50]) );
  EDFCNQD1BWP cp_ctrl_reg_62_ ( .D(cp_ctrl[63]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[62]) );
  EDFCNQD1BWP cp_ctrl_reg_63_ ( .D(cp_ctrl[64]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[63]) );
  EDFCNQD1BWP cp_ctrl_reg_65_ ( .D(cp_ctrl[66]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[65]) );
  EDFCNQD1BWP cp_ctrl_reg_66_ ( .D(cp_ctrl[67]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[66]) );
  EDFCNQD1BWP cp_ctrl_reg_81_ ( .D(cp_ctrl[82]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[81]) );
  EDFCNQD1BWP cp_ctrl_reg_82_ ( .D(cp_ctrl[83]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[82]) );
  EDFCNQD1BWP cp_ctrl_reg_84_ ( .D(cp_ctrl[85]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[84]) );
  EDFCNQD1BWP cp_ctrl_reg_85_ ( .D(cp_ctrl[86]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[85]) );
  EDFCNQD1BWP cp_ctrl_reg_86_ ( .D(cp_ctrl[87]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[86]) );
  EDFCNQD1BWP cp_ctrl_reg_88_ ( .D(cp_ctrl[89]), .E(n427), .CP(clk), .CDN(rstn), .Q(cp_ctrl[88]) );
  EDFCNQD1BWP cp_ctrl_reg_89_ ( .D(cp_ctrl[90]), .E(n428), .CP(clk), .CDN(rstn), .Q(cp_ctrl[89]) );
  EDFCNQD1BWP cp_ctrl_reg_90_ ( .D(cp_ctrl[91]), .E(n417), .CP(clk), .CDN(rstn), .Q(cp_ctrl[90]) );
  EDFCNQD1BWP cp_ctrl_reg_92_ ( .D(cp_ctrl[93]), .E(n418), .CP(clk), .CDN(rstn), .Q(cp_ctrl[92]) );
  EDFCNQD1BWP cp_ctrl_reg_93_ ( .D(cp_ctrl[94]), .E(n419), .CP(clk), .CDN(rstn), .Q(cp_ctrl[93]) );
  EDFCNQD1BWP cp_ctrl_reg_94_ ( .D(cp_ctrl[95]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[94]) );
  EDFCNQD1BWP cp_ctrl_reg_96_ ( .D(cp_ctrl[97]), .E(n421), .CP(clk), .CDN(rstn), .Q(cp_ctrl[96]) );
  EDFCNQD1BWP cp_ctrl_reg_97_ ( .D(cp_ctrl[98]), .E(n416), .CP(clk), .CDN(rstn), .Q(cp_ctrl[97]) );
  EDFCNQD1BWP cp_ctrl_reg_98_ ( .D(cp_ctrl[99]), .E(n422), .CP(clk), .CDN(rstn), .Q(cp_ctrl[98]) );
  EDFCNQD1BWP cp_ctrl_reg_100_ ( .D(cp_ctrl[101]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[100]) );
  EDFCNQD1BWP cp_ctrl_reg_101_ ( .D(cp_ctrl[102]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[101]) );
  EDFCNQD1BWP cp_ctrl_reg_102_ ( .D(cp_ctrl[103]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[102]) );
  EDFCNQD1BWP cp_ctrl_reg_104_ ( .D(cp_ctrl[105]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[104]) );
  EDFCNQD1BWP cp_ctrl_reg_105_ ( .D(cp_ctrl[106]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[105]) );
  EDFCNQD1BWP cp_ctrl_reg_106_ ( .D(cp_ctrl[107]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[106]) );
  EDFCNQD1BWP cp_ctrl_reg_129_ ( .D(cp_ctrl[130]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[129]) );
  EDFCNQD1BWP cp_ctrl_reg_130_ ( .D(cp_ctrl[131]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[130]) );
  EDFCNQD1BWP cp_ctrl_reg_134_ ( .D(cp_ctrl[135]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[134]) );
  EDFCNQD1BWP cp_ctrl_reg_135_ ( .D(cp_ctrl[136]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[135]) );
  EDFCNQD1BWP cp_ctrl_reg_136_ ( .D(cp_ctrl[137]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[136]) );
  EDFCNQD1BWP cp_ctrl_reg_138_ ( .D(cp_ctrl[139]), .E(n429), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[138]) );
  EDFCNQD1BWP cp_ctrl_reg_139_ ( .D(cp_ctrl[140]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[139]) );
  EDFCNQD1BWP cp_ctrl_reg_140_ ( .D(cp_ctrl[141]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[140]) );
  EDFCNQD1BWP cp_ctrl_reg_142_ ( .D(cp_ctrl[143]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[142]) );
  EDFCNQD1BWP cp_ctrl_reg_143_ ( .D(cp_ctrl[144]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[143]) );
  EDFCNQD1BWP cp_ctrl_reg_144_ ( .D(cp_ctrl[145]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[144]) );
  EDFCNQD1BWP cp_ctrl_reg_146_ ( .D(cp_ctrl[147]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[146]) );
  EDFCNQD1BWP cp_ctrl_reg_147_ ( .D(cp_ctrl[148]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[147]) );
  EDFCNQD1BWP cp_ctrl_reg_166_ ( .D(cp_ctrl[167]), .E(n429), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[166]) );
  EDFCNQD1BWP cp_ctrl_reg_167_ ( .D(cp_ctrl[168]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[167]) );
  EDFCNQD1BWP cp_ctrl_reg_168_ ( .D(cp_ctrl[169]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[168]) );
  EDFCNQD1BWP cp_ctrl_reg_170_ ( .D(cp_ctrl[171]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[170]) );
  EDFCNQD1BWP cp_ctrl_reg_171_ ( .D(cp_ctrl[172]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[171]) );
  EDFCNQD1BWP cp_ctrl_reg_172_ ( .D(cp_ctrl[173]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[172]) );
  EDFCNQD1BWP cp_ctrl_reg_174_ ( .D(cp_ctrl[175]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[174]) );
  EDFCNQD1BWP cp_ctrl_reg_175_ ( .D(cp_ctrl[176]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[175]) );
  EDFCNQD1BWP cp_ctrl_reg_176_ ( .D(cp_ctrl[177]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[176]) );
  EDFCNQD1BWP cp_ctrl_reg_178_ ( .D(cp_ctrl[179]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[178]) );
  EDFCNQD1BWP cp_ctrl_reg_179_ ( .D(cp_ctrl[180]), .E(n429), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[179]) );
  EDFCNQD1BWP cp_ctrl_reg_180_ ( .D(cp_ctrl[181]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[180]) );
  EDFCNQD1BWP cp_ctrl_reg_182_ ( .D(cp_ctrl[183]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[182]) );
  EDFCNQD1BWP cp_ctrl_reg_183_ ( .D(cp_ctrl[184]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[183]) );
  EDFCNQD1BWP cp_ctrl_reg_184_ ( .D(cp_ctrl[185]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[184]) );
  EDFCNQD1BWP cp_ctrl_reg_186_ ( .D(cp_ctrl[187]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[186]) );
  EDFCNQD1BWP cp_ctrl_reg_187_ ( .D(cp_ctrl[188]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[187]) );
  EDFCNQD1BWP cp_ctrl_reg_188_ ( .D(cp_ctrl[189]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[188]) );
  EDFCNQD1BWP cp_ctrl_reg_190_ ( .D(cp_ctrl[191]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[190]) );
  EDFCNQD1BWP cp_ctrl_reg_191_ ( .D(cp_ctrl[192]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[191]) );
  EDFCNQD1BWP cp_ctrl_reg_193_ ( .D(cp_ctrl[194]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[193]) );
  EDFCNQD1BWP cp_ctrl_reg_194_ ( .D(cp_ctrl[195]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[194]) );
  EDFCNQD1BWP cp_ctrl_reg_220_ ( .D(cp_ctrl[221]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[220]) );
  EDFCNQD1BWP cp_ctrl_reg_221_ ( .D(cp_ctrl[222]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[221]) );
  EDFCNQD1BWP cp_ctrl_reg_232_ ( .D(cp_ctrl[233]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[232]) );
  EDFCNQD1BWP cp_ctrl_reg_233_ ( .D(cp_ctrl[234]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[233]) );
  EDFCNQD1BWP cp_ctrl_reg_253_ ( .D(cp_ctrl[254]), .E(n429), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[253]) );
  EDFCNQD1BWP cp_ctrl_reg_278_ ( .D(cp_ctrl[279]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[278]) );
  EDFCNQD1BWP cp_ctrl_reg_277_ ( .D(cp_ctrl[278]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[277]) );
  EDFCNQD1BWP cp_ctrl_reg_282_ ( .D(cp_ctrl[283]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[282]) );
  EDFCNQD1BWP cp_ctrl_reg_288_ ( .D(cp_ctrl[289]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[288]) );
  EDFCNQD1BWP cp_ctrl_reg_294_ ( .D(cp_ctrl[295]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[294]) );
  EDFCNQD1BWP cp_ctrl_reg_295_ ( .D(cp_ctrl[296]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[295]) );
  EDFCNQD1BWP cp_ctrl_reg_302_ ( .D(cp_ctrl[303]), .E(n429), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[302]) );
  EDFCNQD1BWP cp_ctrl_reg_310_ ( .D(cp_ctrl[311]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[310]) );
  EDFCNQD1BWP cp_ctrl_reg_311_ ( .D(cp_ctrl[312]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[311]) );
  EDFCNQD1BWP cp_ctrl_reg_312_ ( .D(cp_ctrl[313]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[312]) );
  EDFCNQD1BWP cp_ctrl_reg_314_ ( .D(cp_ctrl[315]), .E(n429), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[314]) );
  EDFCNQD1BWP cp_ctrl_reg_315_ ( .D(cp_ctrl[316]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[315]) );
  EDFCNQD1BWP cp_ctrl_reg_316_ ( .D(cp_ctrl[317]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[316]) );
  EDFCNQD1BWP cp_ctrl_reg_318_ ( .D(cp_ctrl[319]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[318]) );
  EDFCNQD1BWP cp_ctrl_reg_324_ ( .D(cp_ctrl[325]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[324]) );
  EDFCNQD1BWP cp_ctrl_reg_325_ ( .D(cp_ctrl[326]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[325]) );
  EDFCNQD1BWP cp_ctrl_reg_336_ ( .D(cp_ctrl[337]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[336]) );
  EDFCNQD1BWP cp_ctrl_reg_337_ ( .D(cp_ctrl[338]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[337]) );
  EDFCNQD1BWP cp_ctrl_reg_340_ ( .D(cp_ctrl[341]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[340]) );
  EDFCNQD1BWP cp_ctrl_reg_341_ ( .D(cp_ctrl[342]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[341]) );
  EDFCNQD1BWP cp_ctrl_reg_343_ ( .D(cp_ctrl[344]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[343]) );
  EDFCNQD1BWP cp_ctrl_reg_344_ ( .D(cp_ctrl[345]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[344]) );
  EDFCNQD1BWP cp_ctrl_reg_351_ ( .D(cp_ctrl[352]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[351]) );
  EDFCNQD1BWP cp_ctrl_reg_357_ ( .D(cp_ctrl[358]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[357]) );
  EDFCNQD1BWP cp_ctrl_reg_365_ ( .D(cp_ctrl[366]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[365]) );
  EDFCNQD1BWP cp_ctrl_reg_366_ ( .D(cp_ctrl[367]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[366]) );
  EDFCNQD1BWP cp_ctrl_reg_375_ ( .D(cp_ctrl[376]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[375]) );
  EDFCNQD1BWP cp_ctrl_reg_376_ ( .D(cp_ctrl[377]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[376]) );
  EDFCNQD1BWP cp_ctrl_reg_380_ ( .D(cp_ctrl[381]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[380]) );
  EDFCNQD1BWP cp_ctrl_reg_381_ ( .D(cp_ctrl[382]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[381]) );
  EDFCNQD1BWP cp_ctrl_reg_396_ ( .D(cp_ctrl[397]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[396]) );
  EDFCNQD1BWP cp_ctrl_reg_407_ ( .D(cp_ctrl[408]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[407]) );
  EDFCNQD1BWP cp_ctrl_reg_414_ ( .D(cp_ctrl[415]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[414]) );
  EDFCNQD1BWP cp_ctrl_reg_415_ ( .D(cp_ctrl[416]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[415]) );
  EDFCNQD1BWP cp_ctrl_reg_417_ ( .D(cp_ctrl[418]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[417]) );
  EDFCNQD1BWP cp_ctrl_reg_261_ ( .D(cp_ctrl[262]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[261]) );
  EDFCNQD1BWP cp_ctrl_reg_260_ ( .D(cp_ctrl[261]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[260]) );
  EDFCNQD1BWP cp_ctrl_reg_48_ ( .D(cp_ctrl[49]), .E(n429), .CP(clk), .CDN(rstn), .Q(cp_ctrl[48]) );
  EDFCNQD1BWP cp_ctrl_reg_163_ ( .D(cp_ctrl[164]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[163]) );
  EDFCNQD1BWP cp_ctrl_reg_255_ ( .D(cp_ctrl[256]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[255]) );
  EDFCNQD1BWP cp_ctrl_reg_280_ ( .D(cp_ctrl[281]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[280]) );
  EDFCNQD1BWP cp_ctrl_reg_346_ ( .D(cp_ctrl[347]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[346]) );
  EDFCNQD1BWP cp_ctrl_reg_360_ ( .D(cp_ctrl[361]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[360]) );
  EDFCNQD1BWP cp_ctrl_reg_359_ ( .D(cp_ctrl[360]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[359]) );
  EDFCNQD1BWP cp_ctrl_reg_393_ ( .D(cp_ctrl[394]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[393]) );
  EDFCNQD1BWP cp_ctrl_reg_394_ ( .D(cp_ctrl[395]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[394]) );
  EDFCNQD1BWP cp_ctrl_reg_400_ ( .D(cp_ctrl[401]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[400]) );
  EDFCNQD1BWP cp_ctrl_reg_409_ ( .D(cp_ctrl[410]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[409]) );
  EDFCNQD1BWP cp_ctrl_reg_275_ ( .D(cp_ctrl[276]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[275]) );
  EDFCNQD1BWP cp_ctrl_reg_54_ ( .D(cp_ctrl[55]), .E(n418), .CP(clk), .CDN(rstn), .Q(cp_ctrl[54]) );
  EDFCNQD1BWP cp_ctrl_reg_151_ ( .D(cp_ctrl[152]), .E(n429), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[151]) );
  EDFCNQD1BWP cp_ctrl_reg_361_ ( .D(cp_ctrl[362]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[361]) );
  EDFCNQD1BWP cp_ctrl_reg_411_ ( .D(cp_ctrl[412]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[411]) );
  EDFCNQD1BWP cp_ctrl_reg_244_ ( .D(cp_ctrl[245]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[244]) );
  EDFCNQD1BWP cp_ctrl_reg_68_ ( .D(cp_ctrl[69]), .E(n417), .CP(clk), .CDN(rstn), .Q(cp_ctrl[68]) );
  EDFCNQD1BWP cp_ctrl_reg_27_ ( .D(cp_ctrl[28]), .E(n418), .CP(clk), .CDN(rstn), .Q(cp_ctrl[27]) );
  EDFCNQD1BWP cp_ctrl_reg_119_ ( .D(cp_ctrl[120]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[119]) );
  EDFCNQD1BWP cp_ctrl_reg_118_ ( .D(cp_ctrl[119]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[118]) );
  EDFCNQD1BWP cp_ctrl_reg_257_ ( .D(cp_ctrl[258]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[257]) );
  EDFCNQD1BWP cp_ctrl_reg_238_ ( .D(cp_ctrl[239]), .E(n429), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[238]) );
  EDFCNQD1BWP cp_ctrl_reg_199_ ( .D(cp_ctrl[200]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[199]) );
  EDFCNQD1BWP cp_ctrl_reg_249_ ( .D(cp_ctrl[250]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[249]) );
  EDFCNQD1BWP cp_ctrl_reg_113_ ( .D(cp_ctrl[114]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[113]) );
  EDFCNQD1BWP cp_ctrl_reg_378_ ( .D(cp_ctrl[379]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[378]) );
  EDFCNQD1BWP cp_ctrl_reg_368_ ( .D(cp_ctrl[369]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[368]) );
  EDFCNQD1BWP cp_ctrl_reg_334_ ( .D(cp_ctrl[335]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[334]) );
  EDFCNQD1BWP cp_ctrl_reg_327_ ( .D(cp_ctrl[328]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[327]) );
  EDFCNQD1BWP cp_ctrl_reg_230_ ( .D(cp_ctrl[231]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[230]) );
  EDFCNQD1BWP cp_ctrl_reg_223_ ( .D(cp_ctrl[224]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[223]) );
  EDFCNQD1BWP cp_ctrl_reg_214_ ( .D(cp_ctrl[215]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[214]) );
  EDFCNQD1BWP cp_ctrl_reg_132_ ( .D(cp_ctrl[133]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[132]) );
  EDFCNQD1BWP cp_ctrl_reg_60_ ( .D(cp_ctrl[61]), .E(n418), .CP(clk), .CDN(rstn), .Q(cp_ctrl[60]) );
  EDFCNQD1BWP cp_ctrl_reg_20_ ( .D(cp_ctrl[21]), .E(n423), .CP(clk), .CDN(rstn), .Q(cp_ctrl[20]) );
  EDFCNQD1BWP cp_ctrl_reg_0_ ( .D(cp_ctrl[1]), .E(n427), .CP(clk), .CDN(rstn), 
        .Q(cp_ctrl[0]) );
  EDFCNQD1BWP cp_ctrl_reg_55_ ( .D(cp_ctrl[56]), .E(n426), .CP(clk), .CDN(rstn), .Q(cp_ctrl[55]) );
  EDFCNQD1BWP cp_ctrl_reg_57_ ( .D(cp_ctrl[58]), .E(n428), .CP(clk), .CDN(rstn), .Q(cp_ctrl[57]) );
  EDFCNQD1BWP cp_ctrl_reg_348_ ( .D(cp_ctrl[349]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[348]) );
  EDFCNQD1BWP cp_ctrl_reg_34_ ( .D(cp_ctrl[35]), .E(n418), .CP(clk), .CDN(rstn), .Q(cp_ctrl[34]) );
  EDFCNQD1BWP cp_ctrl_reg_42_ ( .D(cp_ctrl[43]), .E(n419), .CP(clk), .CDN(rstn), .Q(cp_ctrl[42]) );
  EDFCNQD1BWP cp_ctrl_reg_46_ ( .D(cp_ctrl[47]), .E(n420), .CP(clk), .CDN(rstn), .Q(cp_ctrl[46]) );
  EDFCNQD1BWP cp_ctrl_reg_117_ ( .D(cp_ctrl[118]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[117]) );
  EDFCNQD1BWP cp_ctrl_reg_150_ ( .D(cp_ctrl[151]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[150]) );
  EDFCNQD1BWP cp_ctrl_reg_154_ ( .D(cp_ctrl[155]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[154]) );
  EDFCNQD1BWP cp_ctrl_reg_197_ ( .D(cp_ctrl[198]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[197]) );
  EDFCNQD1BWP cp_ctrl_reg_205_ ( .D(cp_ctrl[206]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[205]) );
  EDFCNQD1BWP cp_ctrl_reg_237_ ( .D(cp_ctrl[238]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[237]) );
  EDFCNQD1BWP cp_ctrl_reg_290_ ( .D(cp_ctrl[291]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[290]) );
  EDFCNQD1BWP cp_ctrl_reg_298_ ( .D(cp_ctrl[299]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[298]) );
  EDFCNQD1BWP cp_ctrl_reg_306_ ( .D(cp_ctrl[307]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[306]) );
  EDFCNQD1BWP cp_ctrl_reg_373_ ( .D(cp_ctrl[374]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[373]) );
  EDFCNQD1BWP cp_ctrl_reg_209_ ( .D(cp_ctrl[210]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[209]) );
  EDFCNQD1BWP cp_ctrl_reg_77_ ( .D(cp_ctrl[78]), .E(n419), .CP(clk), .CDN(rstn), .Q(cp_ctrl[77]) );
  EDFCNQD1BWP cp_ctrl_reg_125_ ( .D(cp_ctrl[126]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[125]) );
  EDFCNQD1BWP cp_ctrl_reg_386_ ( .D(cp_ctrl[387]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[386]) );
  EDFCNQD1BWP cp_ctrl_reg_9_ ( .D(cp_ctrl[10]), .E(n423), .CP(clk), .CDN(rstn), 
        .Q(cp_ctrl[9]) );
  EDFCNQD1BWP cp_ctrl_reg_11_ ( .D(cp_ctrl[12]), .E(n420), .CP(clk), .CDN(rstn), .Q(cp_ctrl[11]) );
  EDFCNQD1BWP cp_ctrl_reg_265_ ( .D(cp_ctrl[266]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[265]) );
  EDFCNQD1BWP cp_ctrl_reg_267_ ( .D(cp_ctrl[268]), .E(n429), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[267]) );
  EDFCNQD1BWP cp_ctrl_reg_323_ ( .D(cp_ctrl[324]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[323]) );
  EDFCNQD1BWP cp_ctrl_reg_353_ ( .D(cp_ctrl[354]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[353]) );
  EDFCNQD1BWP cp_ctrl_reg_59_ ( .D(cp_ctrl[60]), .E(n423), .CP(clk), .CDN(rstn), .Q(cp_ctrl[59]) );
  EDFCNQD1BWP cp_ctrl_reg_73_ ( .D(cp_ctrl[74]), .E(n426), .CP(clk), .CDN(rstn), .Q(cp_ctrl[73]) );
  EDFCNQD1BWP cp_ctrl_reg_201_ ( .D(cp_ctrl[202]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[201]) );
  EDFCNQD1BWP cp_ctrl_reg_329_ ( .D(cp_ctrl[330]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[329]) );
  EDFCNQD1BWP cp_ctrl_reg_225_ ( .D(cp_ctrl[226]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[225]) );
  EDFCNQD1BWP cp_ctrl_reg_121_ ( .D(cp_ctrl[122]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[121]) );
  EDFCNQD1BWP cp_ctrl_reg_159_ ( .D(cp_ctrl[160]), .E(n419), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[159]) );
  EDFCNQD1BWP cp_ctrl_reg_339_ ( .D(cp_ctrl[340]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[339]) );
  EDFCNQD1BWP cp_ctrl_reg_405_ ( .D(cp_ctrl[406]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[405]) );
  EDFCNQD1BWP cp_ctrl_reg_352_ ( .D(cp_ctrl[353]), .E(n424), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[352]) );
  EDFCNQD1BWP cp_ctrl_reg_76_ ( .D(cp_ctrl[77]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[76]) );
  EDFCNQD1BWP cp_ctrl_reg_404_ ( .D(cp_ctrl[405]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[404]) );
  EDFCNQD1BWP cp_ctrl_reg_149_ ( .D(cp_ctrl[150]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[149]) );
  EDFCNQD1BWP cp_ctrl_reg_157_ ( .D(cp_ctrl[158]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[157]) );
  EDFCNQD1BWP cp_ctrl_reg_196_ ( .D(cp_ctrl[197]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[196]) );
  EDFCNQD1BWP cp_ctrl_reg_236_ ( .D(cp_ctrl[237]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[236]) );
  EDFCNQD1BWP cp_ctrl_reg_372_ ( .D(cp_ctrl[373]), .E(n429), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[372]) );
  EDFCNQD1BWP cp_ctrl_reg_208_ ( .D(cp_ctrl[209]), .E(n426), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[208]) );
  EDFCNQD1BWP cp_ctrl_reg_264_ ( .D(cp_ctrl[265]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[264]) );
  EDFCNQD1BWP cp_ctrl_reg_266_ ( .D(cp_ctrl[267]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[266]) );
  EDFCNQD1BWP cp_ctrl_reg_297_ ( .D(cp_ctrl[298]), .E(n417), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[297]) );
  EDFCNQD1BWP cp_ctrl_reg_153_ ( .D(cp_ctrl[154]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[153]) );
  EDFCNQD1BWP cp_ctrl_reg_33_ ( .D(cp_ctrl[34]), .E(n419), .CP(clk), .CDN(rstn), .Q(cp_ctrl[33]) );
  EDFCNQD1BWP cp_ctrl_reg_200_ ( .D(cp_ctrl[201]), .E(n420), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[200]) );
  EDFCNQD1BWP cp_ctrl_reg_289_ ( .D(cp_ctrl[290]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[289]) );
  EDFCNQD1BWP cp_ctrl_reg_72_ ( .D(cp_ctrl[73]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[72]) );
  EDFCNQD1BWP cp_ctrl_reg_328_ ( .D(cp_ctrl[329]), .E(n429), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[328]) );
  EDFCNQD1BWP cp_ctrl_reg_120_ ( .D(cp_ctrl[121]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[120]) );
  EDFCNQD1BWP cp_ctrl_reg_158_ ( .D(cp_ctrl[159]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[158]) );
  EDFCNQD1BWP cp_ctrl_reg_338_ ( .D(cp_ctrl[339]), .E(n422), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[338]) );
  EDFCNQD1BWP cp_ctrl_reg_347_ ( .D(cp_ctrl[348]), .E(n423), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[347]) );
  EDFCNQD1BWP cp_ctrl_reg_45_ ( .D(cp_ctrl[46]), .E(n424), .CP(clk), .CDN(rstn), .Q(cp_ctrl[45]) );
  EDFCNQD1BWP cp_ctrl_reg_116_ ( .D(cp_ctrl[117]), .E(n425), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[116]) );
  EDFCNQD1BWP cp_ctrl_reg_204_ ( .D(cp_ctrl[205]), .E(n421), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[204]) );
  EDFCNQD1BWP cp_ctrl_reg_8_ ( .D(cp_ctrl[9]), .E(n429), .CP(clk), .CDN(rstn), 
        .Q(cp_ctrl[8]) );
  EDFCNQD1BWP cp_ctrl_reg_10_ ( .D(cp_ctrl[11]), .E(n426), .CP(clk), .CDN(rstn), .Q(cp_ctrl[10]) );
  EDFCNQD1BWP cp_ctrl_reg_322_ ( .D(cp_ctrl[323]), .E(n427), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[322]) );
  EDFCNQD1BWP cp_ctrl_reg_124_ ( .D(cp_ctrl[125]), .E(n428), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[124]) );
  EDFCNQD1BWP cp_ctrl_reg_41_ ( .D(cp_ctrl[42]), .E(n417), .CP(clk), .CDN(rstn), .Q(cp_ctrl[41]) );
  EDFCNQD1BWP cp_ctrl_reg_305_ ( .D(cp_ctrl[306]), .E(n418), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[305]) );
  EDFCNQD1BWP cp_ctrl_reg_385_ ( .D(cp_ctrl[386]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[385]) );
  EDFCNQD1BWP cp_ctrl_reg_224_ ( .D(cp_ctrl[225]), .E(n416), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[224]) );
  EDFCNQD1BWP cp_ctrl_reg_58_ ( .D(cp_ctrl[59]), .E(wr_vld), .CP(clk), .CDN(
        rstn), .Q(cp_ctrl[58]) );
  NR2XD1BWP U535 ( .A1(n2), .A2(n14), .ZN(n318) );
  INVD0BWP U536 ( .I(phase_cnt[4]), .ZN(n354) );
  INVD0BWP U537 ( .I(n368), .ZN(n371) );
  BUFFD1BWP U538 ( .I(wr_vld), .Z(n421) );
  BUFFD1BWP U539 ( .I(wr_vld), .Z(n420) );
  BUFFD1BWP U540 ( .I(wr_vld), .Z(n419) );
  BUFFD1BWP U541 ( .I(wr_vld), .Z(n418) );
  BUFFD1BWP U542 ( .I(wr_vld), .Z(n417) );
  BUFFD1BWP U543 ( .I(wr_vld), .Z(n428) );
  BUFFD1BWP U544 ( .I(wr_vld), .Z(n427) );
  BUFFD1BWP U545 ( .I(wr_vld), .Z(n426) );
  BUFFD1BWP U546 ( .I(wr_vld), .Z(n429) );
  BUFFD1BWP U547 ( .I(wr_vld), .Z(n425) );
  BUFFD1BWP U548 ( .I(wr_vld), .Z(n424) );
  BUFFD1BWP U549 ( .I(wr_vld), .Z(n423) );
  BUFFD1BWP U550 ( .I(wr_vld), .Z(n422) );
  BUFFD1BWP U551 ( .I(wr_vld), .Z(n416) );
  INVD0BWP U552 ( .I(phase_cnt[0]), .ZN(n2666) );
  INVD0BWP U553 ( .I(cnt[8]), .ZN(n361) );
  INVD0BWP U554 ( .I(cnt[7]), .ZN(n364) );
  INVD0BWP U555 ( .I(cnt[3]), .ZN(n406) );
  CKND2D0BWP U556 ( .A1(cnt[5]), .A2(n406), .ZN(n4) );
  INVD0BWP U557 ( .I(cnt[2]), .ZN(n408) );
  INVD0BWP U558 ( .I(cnt[4]), .ZN(n405) );
  CKND2D0BWP U559 ( .A1(n408), .A2(n405), .ZN(n2) );
  OR2D0BWP U560 ( .A1(n4), .A2(n2), .Z(n148) );
  INVD0BWP U561 ( .I(cnt[0]), .ZN(n412) );
  INVD0BWP U562 ( .I(cnt[1]), .ZN(n410) );
  NR2D0BWP U563 ( .A1(n412), .A2(n410), .ZN(n373) );
  INVD0BWP U564 ( .I(n373), .ZN(n366) );
  NR2D0BWP U565 ( .A1(n366), .A2(cnt[6]), .ZN(n305) );
  INVD0BWP U566 ( .I(n305), .ZN(n370) );
  NR4D0BWP U567 ( .A1(n361), .A2(n364), .A3(n148), .A4(n370), .ZN(n367) );
  IAO21D0BWP U568 ( .A1(wr_vld), .A2(rd_rdy), .B(n367), .ZN(n374) );
  INVD0BWP U569 ( .I(n374), .ZN(n411) );
  NR2D0BWP U570 ( .A1(n367), .A2(n374), .ZN(n365) );
  MAOI22D0BWP U571 ( .A1(n411), .A2(n412), .B1(n412), .B2(n365), .ZN(n521) );
  INVD0BWP U572 ( .I(cnt[5]), .ZN(n375) );
  CKND2D0BWP U573 ( .A1(n406), .A2(n375), .ZN(n3) );
  NR2D0BWP U574 ( .A1(n2), .A2(n3), .ZN(n257) );
  INVD0BWP U575 ( .I(n148), .ZN(n315) );
  AOI22D0BWP U576 ( .A1(n257), .A2(cp_ctrl[195]), .B1(n315), .B2(cp_ctrl[227]), 
        .ZN(n12) );
  CKND2D0BWP U577 ( .A1(cnt[3]), .A2(cnt[5]), .ZN(n1) );
  CKND2D0BWP U578 ( .A1(cnt[2]), .A2(n405), .ZN(n404) );
  NR2XD0BWP U579 ( .A1(n1), .A2(n404), .ZN(n324) );
  CKND2D0BWP U580 ( .A1(cnt[4]), .A2(n408), .ZN(n13) );
  NR2XD0BWP U581 ( .A1(n4), .A2(n13), .ZN(n323) );
  AOI22D0BWP U582 ( .A1(n324), .A2(cp_ctrl[239]), .B1(n323), .B2(cp_ctrl[243]), 
        .ZN(n11) );
  NR2XD0BWP U583 ( .A1(n1), .A2(n13), .ZN(n325) );
  CKND2D0BWP U584 ( .A1(cnt[2]), .A2(cnt[4]), .ZN(n376) );
  NR2XD0BWP U585 ( .A1(n1), .A2(n376), .ZN(n368) );
  AOI22D0BWP U586 ( .A1(n325), .A2(cp_ctrl[251]), .B1(n368), .B2(cp_ctrl[255]), 
        .ZN(n10) );
  CKND2D0BWP U587 ( .A1(cnt[3]), .A2(n375), .ZN(n14) );
  NR2D0BWP U588 ( .A1(n14), .A2(n404), .ZN(n292) );
  NR2XD0BWP U589 ( .A1(n4), .A2(n376), .ZN(n313) );
  AOI22D0BWP U590 ( .A1(n292), .A2(cp_ctrl[207]), .B1(n313), .B2(cp_ctrl[247]), 
        .ZN(n8) );
  NR2D0BWP U591 ( .A1(n3), .A2(n404), .ZN(n329) );
  NR2XD0BWP U592 ( .A1(n1), .A2(n2), .ZN(n328) );
  AOI22D0BWP U593 ( .A1(n329), .A2(cp_ctrl[199]), .B1(n328), .B2(cp_ctrl[235]), 
        .ZN(n7) );
  NR2XD0BWP U594 ( .A1(n13), .A2(n3), .ZN(n316) );
  AOI22D0BWP U595 ( .A1(n318), .A2(cp_ctrl[203]), .B1(n316), .B2(cp_ctrl[211]), 
        .ZN(n6) );
  NR2XD0BWP U596 ( .A1(n376), .A2(n3), .ZN(n312) );
  NR2XD0BWP U597 ( .A1(n4), .A2(n404), .ZN(n311) );
  AOI22D0BWP U598 ( .A1(n312), .A2(cp_ctrl[215]), .B1(n311), .B2(cp_ctrl[231]), 
        .ZN(n5) );
  AN4D0BWP U599 ( .A1(n8), .A2(n7), .A3(n6), .A4(n5), .Z(n9) );
  AN4D0BWP U600 ( .A1(n12), .A2(n11), .A3(n10), .A4(n9), .Z(n29) );
  CKND2D0BWP U601 ( .A1(cnt[6]), .A2(n373), .ZN(n233) );
  AOI22D0BWP U602 ( .A1(n324), .A2(cp_ctrl[172]), .B1(n323), .B2(cp_ctrl[176]), 
        .ZN(n19) );
  AOI22D0BWP U603 ( .A1(n325), .A2(cp_ctrl[184]), .B1(n368), .B2(cp_ctrl[188]), 
        .ZN(n18) );
  OR2D0BWP U604 ( .A1(n14), .A2(n13), .Z(n59) );
  INVD0BWP U605 ( .I(n59), .ZN(n327) );
  NR2XD0BWP U606 ( .A1(n376), .A2(n14), .ZN(n326) );
  AOI22D0BWP U607 ( .A1(n327), .A2(cp_ctrl[152]), .B1(n326), .B2(cp_ctrl[156]), 
        .ZN(n17) );
  INVD0BWP U608 ( .I(n329), .ZN(n15) );
  INVD0BWP U609 ( .I(n15), .ZN(n276) );
  AOI22D0BWP U610 ( .A1(n276), .A2(cp_ctrl[132]), .B1(n328), .B2(cp_ctrl[168]), 
        .ZN(n16) );
  ND4D0BWP U611 ( .A1(n19), .A2(n18), .A3(n17), .A4(n16), .ZN(n26) );
  AOI22D0BWP U612 ( .A1(n312), .A2(cp_ctrl[148]), .B1(n311), .B2(cp_ctrl[164]), 
        .ZN(n24) );
  AOI22D0BWP U613 ( .A1(n292), .A2(cp_ctrl[140]), .B1(n313), .B2(cp_ctrl[180]), 
        .ZN(n23) );
  AOI22D0BWP U614 ( .A1(n316), .A2(cp_ctrl[144]), .B1(n315), .B2(cp_ctrl[160]), 
        .ZN(n22) );
  INVD0BWP U615 ( .I(n257), .ZN(n20) );
  INVD0BWP U616 ( .I(n20), .ZN(n317) );
  AOI22D0BWP U617 ( .A1(n318), .A2(cp_ctrl[136]), .B1(n317), .B2(cp_ctrl[128]), 
        .ZN(n21) );
  ND4D0BWP U618 ( .A1(n24), .A2(n23), .A3(n22), .A4(n21), .ZN(n25) );
  NR2D0BWP U619 ( .A1(n26), .A2(n25), .ZN(n28) );
  NR2D0BWP U620 ( .A1(cnt[1]), .A2(cnt[6]), .ZN(n27) );
  CKND2D0BWP U621 ( .A1(n27), .A2(n412), .ZN(n202) );
  OAI22D0BWP U622 ( .A1(n29), .A2(n233), .B1(n28), .B2(n202), .ZN(n201) );
  CKND2D0BWP U623 ( .A1(cnt[1]), .A2(n412), .ZN(n96) );
  INVD0BWP U624 ( .I(cnt[6]), .ZN(n30) );
  NR2D0BWP U625 ( .A1(n96), .A2(n30), .ZN(n245) );
  AOI22D0BWP U626 ( .A1(n317), .A2(cp_ctrl[194]), .B1(n315), .B2(cp_ctrl[226]), 
        .ZN(n39) );
  AOI22D0BWP U627 ( .A1(n324), .A2(cp_ctrl[238]), .B1(n323), .B2(cp_ctrl[242]), 
        .ZN(n38) );
  AOI22D0BWP U628 ( .A1(n325), .A2(cp_ctrl[250]), .B1(n368), .B2(cp_ctrl[254]), 
        .ZN(n37) );
  INVD0BWP U629 ( .I(n292), .ZN(n31) );
  INVD0BWP U630 ( .I(n31), .ZN(n314) );
  AOI22D0BWP U631 ( .A1(n314), .A2(cp_ctrl[206]), .B1(n313), .B2(cp_ctrl[246]), 
        .ZN(n35) );
  AOI22D0BWP U632 ( .A1(n276), .A2(cp_ctrl[198]), .B1(n328), .B2(cp_ctrl[234]), 
        .ZN(n34) );
  AOI22D0BWP U633 ( .A1(n318), .A2(cp_ctrl[202]), .B1(n316), .B2(cp_ctrl[210]), 
        .ZN(n33) );
  AOI22D0BWP U634 ( .A1(n312), .A2(cp_ctrl[214]), .B1(n311), .B2(cp_ctrl[230]), 
        .ZN(n32) );
  AN4D0BWP U635 ( .A1(n35), .A2(n34), .A3(n33), .A4(n32), .Z(n36) );
  ND4D0BWP U636 ( .A1(n39), .A2(n38), .A3(n37), .A4(n36), .ZN(n49) );
  CKND2D0BWP U637 ( .A1(cnt[6]), .A2(n410), .ZN(n50) );
  NR2D0BWP U638 ( .A1(n50), .A2(n412), .ZN(n301) );
  AOI22D0BWP U639 ( .A1(n257), .A2(cp_ctrl[193]), .B1(n315), .B2(cp_ctrl[225]), 
        .ZN(n47) );
  AOI22D0BWP U640 ( .A1(n324), .A2(cp_ctrl[237]), .B1(n323), .B2(cp_ctrl[241]), 
        .ZN(n46) );
  AOI22D0BWP U641 ( .A1(n325), .A2(cp_ctrl[249]), .B1(n368), .B2(cp_ctrl[253]), 
        .ZN(n45) );
  AOI22D0BWP U642 ( .A1(n292), .A2(cp_ctrl[205]), .B1(n313), .B2(cp_ctrl[245]), 
        .ZN(n43) );
  AOI22D0BWP U643 ( .A1(n276), .A2(cp_ctrl[197]), .B1(n328), .B2(cp_ctrl[233]), 
        .ZN(n42) );
  AOI22D0BWP U644 ( .A1(n318), .A2(cp_ctrl[201]), .B1(n316), .B2(cp_ctrl[209]), 
        .ZN(n41) );
  AOI22D0BWP U645 ( .A1(n312), .A2(cp_ctrl[213]), .B1(n311), .B2(cp_ctrl[229]), 
        .ZN(n40) );
  AN4D0BWP U646 ( .A1(n43), .A2(n42), .A3(n41), .A4(n40), .Z(n44) );
  ND4D0BWP U647 ( .A1(n47), .A2(n46), .A3(n45), .A4(n44), .ZN(n48) );
  AOI22D0BWP U648 ( .A1(n245), .A2(n49), .B1(n301), .B2(n48), .ZN(n102) );
  NR2D0BWP U649 ( .A1(n50), .A2(cnt[0]), .ZN(n334) );
  AOI22D0BWP U650 ( .A1(n257), .A2(cp_ctrl[192]), .B1(n315), .B2(cp_ctrl[224]), 
        .ZN(n58) );
  AOI22D0BWP U651 ( .A1(n324), .A2(cp_ctrl[236]), .B1(n323), .B2(cp_ctrl[240]), 
        .ZN(n57) );
  AOI22D0BWP U652 ( .A1(n325), .A2(cp_ctrl[248]), .B1(n368), .B2(cp_ctrl[252]), 
        .ZN(n56) );
  AOI22D0BWP U653 ( .A1(n314), .A2(cp_ctrl[204]), .B1(n313), .B2(cp_ctrl[244]), 
        .ZN(n54) );
  AOI22D0BWP U654 ( .A1(n329), .A2(cp_ctrl[196]), .B1(n328), .B2(cp_ctrl[232]), 
        .ZN(n53) );
  AOI22D0BWP U655 ( .A1(n318), .A2(cp_ctrl[200]), .B1(n316), .B2(cp_ctrl[208]), 
        .ZN(n52) );
  AOI22D0BWP U656 ( .A1(n312), .A2(cp_ctrl[212]), .B1(n311), .B2(cp_ctrl[228]), 
        .ZN(n51) );
  AN4D0BWP U657 ( .A1(n54), .A2(n53), .A3(n52), .A4(n51), .Z(n55) );
  ND4D0BWP U658 ( .A1(n58), .A2(n57), .A3(n56), .A4(n55), .ZN(n77) );
  AOI22D0BWP U659 ( .A1(n245), .A2(cp_ctrl[218]), .B1(n301), .B2(cp_ctrl[217]), 
        .ZN(n61) );
  INVD0BWP U660 ( .I(n233), .ZN(n149) );
  AOI22D0BWP U661 ( .A1(n149), .A2(cp_ctrl[219]), .B1(n334), .B2(cp_ctrl[216]), 
        .ZN(n60) );
  AOI21D0BWP U662 ( .A1(n61), .A2(n60), .B(n59), .ZN(n76) );
  AOI22D0BWP U663 ( .A1(n245), .A2(cp_ctrl[222]), .B1(n301), .B2(cp_ctrl[221]), 
        .ZN(n74) );
  AOI22D0BWP U664 ( .A1(n312), .A2(cp_ctrl[149]), .B1(n311), .B2(cp_ctrl[165]), 
        .ZN(n65) );
  AOI22D0BWP U665 ( .A1(n292), .A2(cp_ctrl[141]), .B1(n313), .B2(cp_ctrl[181]), 
        .ZN(n64) );
  AOI22D0BWP U666 ( .A1(n316), .A2(cp_ctrl[145]), .B1(n315), .B2(cp_ctrl[161]), 
        .ZN(n63) );
  AOI22D0BWP U667 ( .A1(n318), .A2(cp_ctrl[137]), .B1(n257), .B2(cp_ctrl[129]), 
        .ZN(n62) );
  ND4D0BWP U668 ( .A1(n65), .A2(n64), .A3(n63), .A4(n62), .ZN(n71) );
  AOI22D0BWP U669 ( .A1(n324), .A2(cp_ctrl[173]), .B1(n323), .B2(cp_ctrl[177]), 
        .ZN(n69) );
  AOI22D0BWP U670 ( .A1(n325), .A2(cp_ctrl[185]), .B1(n368), .B2(cp_ctrl[189]), 
        .ZN(n68) );
  AOI22D0BWP U671 ( .A1(n327), .A2(cp_ctrl[153]), .B1(n326), .B2(cp_ctrl[157]), 
        .ZN(n67) );
  AOI22D0BWP U672 ( .A1(n276), .A2(cp_ctrl[133]), .B1(n328), .B2(cp_ctrl[169]), 
        .ZN(n66) );
  ND4D0BWP U673 ( .A1(n69), .A2(n68), .A3(n67), .A4(n66), .ZN(n70) );
  NR3D0BWP U674 ( .A1(cnt[1]), .A2(cnt[6]), .A3(n412), .ZN(n287) );
  OAI21D0BWP U675 ( .A1(n71), .A2(n70), .B(n287), .ZN(n73) );
  AOI22D0BWP U676 ( .A1(n149), .A2(cp_ctrl[223]), .B1(n334), .B2(cp_ctrl[220]), 
        .ZN(n72) );
  INVD0BWP U677 ( .I(n326), .ZN(n211) );
  AOI32D0BWP U678 ( .A1(n74), .A2(n73), .A3(n72), .B1(n211), .B2(n73), .ZN(n75) );
  AOI211D0BWP U679 ( .A1(n334), .A2(n77), .B(n76), .C(n75), .ZN(n101) );
  AOI22D0BWP U680 ( .A1(n312), .A2(cp_ctrl[151]), .B1(n311), .B2(cp_ctrl[167]), 
        .ZN(n81) );
  AOI22D0BWP U681 ( .A1(n314), .A2(cp_ctrl[143]), .B1(n313), .B2(cp_ctrl[183]), 
        .ZN(n80) );
  AOI22D0BWP U682 ( .A1(n316), .A2(cp_ctrl[147]), .B1(n315), .B2(cp_ctrl[163]), 
        .ZN(n79) );
  AOI22D0BWP U683 ( .A1(n318), .A2(cp_ctrl[139]), .B1(n257), .B2(cp_ctrl[131]), 
        .ZN(n78) );
  ND4D0BWP U684 ( .A1(n81), .A2(n80), .A3(n79), .A4(n78), .ZN(n87) );
  AOI22D0BWP U685 ( .A1(n324), .A2(cp_ctrl[175]), .B1(n323), .B2(cp_ctrl[179]), 
        .ZN(n85) );
  AOI22D0BWP U686 ( .A1(n325), .A2(cp_ctrl[187]), .B1(n368), .B2(cp_ctrl[191]), 
        .ZN(n84) );
  AOI22D0BWP U687 ( .A1(n327), .A2(cp_ctrl[155]), .B1(n326), .B2(cp_ctrl[159]), 
        .ZN(n83) );
  AOI22D0BWP U688 ( .A1(n329), .A2(cp_ctrl[135]), .B1(n328), .B2(cp_ctrl[171]), 
        .ZN(n82) );
  ND4D0BWP U689 ( .A1(n85), .A2(n84), .A3(n83), .A4(n82), .ZN(n86) );
  OAI21D0BWP U690 ( .A1(n87), .A2(n86), .B(n305), .ZN(n100) );
  AOI22D0BWP U691 ( .A1(n312), .A2(cp_ctrl[150]), .B1(n311), .B2(cp_ctrl[166]), 
        .ZN(n91) );
  AOI22D0BWP U692 ( .A1(n292), .A2(cp_ctrl[142]), .B1(n313), .B2(cp_ctrl[182]), 
        .ZN(n90) );
  AOI22D0BWP U693 ( .A1(n316), .A2(cp_ctrl[146]), .B1(n315), .B2(cp_ctrl[162]), 
        .ZN(n89) );
  AOI22D0BWP U694 ( .A1(n318), .A2(cp_ctrl[138]), .B1(n317), .B2(cp_ctrl[130]), 
        .ZN(n88) );
  ND4D0BWP U695 ( .A1(n91), .A2(n90), .A3(n89), .A4(n88), .ZN(n98) );
  AOI22D0BWP U696 ( .A1(n324), .A2(cp_ctrl[174]), .B1(n323), .B2(cp_ctrl[178]), 
        .ZN(n95) );
  AOI22D0BWP U697 ( .A1(n325), .A2(cp_ctrl[186]), .B1(n368), .B2(cp_ctrl[190]), 
        .ZN(n94) );
  AOI22D0BWP U698 ( .A1(n327), .A2(cp_ctrl[154]), .B1(n326), .B2(cp_ctrl[158]), 
        .ZN(n93) );
  AOI22D0BWP U699 ( .A1(n276), .A2(cp_ctrl[134]), .B1(n328), .B2(cp_ctrl[170]), 
        .ZN(n92) );
  ND4D0BWP U700 ( .A1(n95), .A2(n94), .A3(n93), .A4(n92), .ZN(n97) );
  NR2D0BWP U701 ( .A1(n96), .A2(cnt[6]), .ZN(n288) );
  OAI21D0BWP U702 ( .A1(n98), .A2(n97), .B(n288), .ZN(n99) );
  ND4D0BWP U703 ( .A1(n102), .A2(n101), .A3(n100), .A4(n99), .ZN(n200) );
  NR2D0BWP U704 ( .A1(n371), .A2(n233), .ZN(n359) );
  AOI22D0BWP U705 ( .A1(n324), .A2(cp_ctrl[47]), .B1(n323), .B2(cp_ctrl[51]), 
        .ZN(n111) );
  AOI22D0BWP U706 ( .A1(n329), .A2(cp_ctrl[7]), .B1(n328), .B2(cp_ctrl[43]), 
        .ZN(n110) );
  AO22D0BWP U707 ( .A1(n325), .A2(cp_ctrl[59]), .B1(n368), .B2(cp_ctrl[63]), 
        .Z(n108) );
  AOI22D0BWP U708 ( .A1(n314), .A2(cp_ctrl[15]), .B1(n313), .B2(cp_ctrl[55]), 
        .ZN(n106) );
  AOI22D0BWP U709 ( .A1(n327), .A2(cp_ctrl[27]), .B1(n326), .B2(cp_ctrl[31]), 
        .ZN(n105) );
  AOI22D0BWP U710 ( .A1(n317), .A2(cp_ctrl[3]), .B1(n316), .B2(cp_ctrl[19]), 
        .ZN(n104) );
  AOI22D0BWP U711 ( .A1(n312), .A2(cp_ctrl[23]), .B1(n318), .B2(cp_ctrl[11]), 
        .ZN(n103) );
  ND4D0BWP U712 ( .A1(n106), .A2(n105), .A3(n104), .A4(n103), .ZN(n107) );
  AOI211D0BWP U713 ( .A1(n315), .A2(cp_ctrl[35]), .B(n108), .C(n107), .ZN(n109) );
  AOI31D0BWP U714 ( .A1(n111), .A2(n110), .A3(n109), .B(n370), .ZN(n116) );
  AOI222D0BWP U715 ( .A1(n149), .A2(cp_ctrl[115]), .B1(n245), .B2(cp_ctrl[114]), .C1(n301), .C2(cp_ctrl[113]), .ZN(n114) );
  INVD0BWP U716 ( .I(n323), .ZN(n113) );
  AOI222D0BWP U717 ( .A1(n288), .A2(cp_ctrl[58]), .B1(n149), .B2(cp_ctrl[123]), 
        .C1(n301), .C2(cp_ctrl[121]), .ZN(n112) );
  INVD0BWP U718 ( .I(n325), .ZN(n307) );
  OAI22D0BWP U719 ( .A1(n114), .A2(n113), .B1(n112), .B2(n307), .ZN(n115) );
  AOI211D0BWP U720 ( .A1(n359), .A2(cp_ctrl[127]), .B(n116), .C(n115), .ZN(
        n198) );
  AOI222D0BWP U721 ( .A1(n245), .A2(cp_ctrl[118]), .B1(n334), .B2(cp_ctrl[116]), .C1(n301), .C2(cp_ctrl[117]), .ZN(n120) );
  INVD0BWP U722 ( .I(n313), .ZN(n119) );
  AOI222D0BWP U723 ( .A1(n288), .A2(cp_ctrl[38]), .B1(n287), .B2(cp_ctrl[37]), 
        .C1(n305), .C2(cp_ctrl[39]), .ZN(n118) );
  INVD0BWP U724 ( .I(n311), .ZN(n117) );
  OAI22D0BWP U725 ( .A1(n120), .A2(n119), .B1(n118), .B2(n117), .ZN(n130) );
  AOI22D0BWP U726 ( .A1(n292), .A2(cp_ctrl[77]), .B1(n326), .B2(cp_ctrl[93]), 
        .ZN(n124) );
  AOI22D0BWP U727 ( .A1(n276), .A2(cp_ctrl[69]), .B1(n328), .B2(cp_ctrl[105]), 
        .ZN(n123) );
  AOI22D0BWP U728 ( .A1(n318), .A2(cp_ctrl[73]), .B1(n311), .B2(cp_ctrl[101]), 
        .ZN(n122) );
  AOI22D0BWP U729 ( .A1(n327), .A2(cp_ctrl[89]), .B1(n312), .B2(cp_ctrl[85]), 
        .ZN(n121) );
  ND4D0BWP U730 ( .A1(n124), .A2(n123), .A3(n122), .A4(n121), .ZN(n129) );
  INVD0BWP U731 ( .I(cp_ctrl[97]), .ZN(n127) );
  AOI22D0BWP U732 ( .A1(n257), .A2(cp_ctrl[65]), .B1(n316), .B2(cp_ctrl[81]), 
        .ZN(n126) );
  AOI22D0BWP U733 ( .A1(n324), .A2(cp_ctrl[109]), .B1(n368), .B2(cp_ctrl[125]), 
        .ZN(n125) );
  OAI211D0BWP U734 ( .A1(n148), .A2(n127), .B(n126), .C(n125), .ZN(n128) );
  OAI32D0BWP U735 ( .A1(n130), .A2(n129), .A3(n128), .B1(n301), .B2(n130), 
        .ZN(n197) );
  AOI22D0BWP U736 ( .A1(n324), .A2(cp_ctrl[108]), .B1(n323), .B2(cp_ctrl[112]), 
        .ZN(n140) );
  AOI22D0BWP U737 ( .A1(n329), .A2(cp_ctrl[68]), .B1(n328), .B2(cp_ctrl[104]), 
        .ZN(n139) );
  AO22D0BWP U738 ( .A1(n315), .A2(cp_ctrl[96]), .B1(n368), .B2(cp_ctrl[124]), 
        .Z(n136) );
  AOI22D0BWP U739 ( .A1(n314), .A2(cp_ctrl[76]), .B1(n312), .B2(cp_ctrl[84]), 
        .ZN(n134) );
  AOI22D0BWP U740 ( .A1(n327), .A2(cp_ctrl[88]), .B1(n326), .B2(cp_ctrl[92]), 
        .ZN(n133) );
  AOI22D0BWP U741 ( .A1(n317), .A2(cp_ctrl[64]), .B1(n316), .B2(cp_ctrl[80]), 
        .ZN(n132) );
  AOI22D0BWP U742 ( .A1(n318), .A2(cp_ctrl[72]), .B1(n311), .B2(cp_ctrl[100]), 
        .ZN(n131) );
  ND4D0BWP U743 ( .A1(n134), .A2(n133), .A3(n132), .A4(n131), .ZN(n135) );
  AOI211D0BWP U744 ( .A1(n325), .A2(cp_ctrl[120]), .B(n136), .C(n135), .ZN(
        n138) );
  INVD0BWP U745 ( .I(n334), .ZN(n137) );
  AOI31D0BWP U746 ( .A1(n140), .A2(n139), .A3(n138), .B(n137), .ZN(n152) );
  AOI22D0BWP U747 ( .A1(n327), .A2(cp_ctrl[91]), .B1(n292), .B2(cp_ctrl[79]), 
        .ZN(n144) );
  AOI22D0BWP U748 ( .A1(n276), .A2(cp_ctrl[71]), .B1(n326), .B2(cp_ctrl[95]), 
        .ZN(n143) );
  AOI22D0BWP U749 ( .A1(n318), .A2(cp_ctrl[75]), .B1(n311), .B2(cp_ctrl[103]), 
        .ZN(n142) );
  AOI22D0BWP U750 ( .A1(n312), .A2(cp_ctrl[87]), .B1(n313), .B2(cp_ctrl[119]), 
        .ZN(n141) );
  ND4D0BWP U751 ( .A1(n144), .A2(n143), .A3(n142), .A4(n141), .ZN(n151) );
  INVD0BWP U752 ( .I(cp_ctrl[99]), .ZN(n147) );
  AOI22D0BWP U753 ( .A1(n317), .A2(cp_ctrl[67]), .B1(n316), .B2(cp_ctrl[83]), 
        .ZN(n146) );
  AOI22D0BWP U754 ( .A1(n324), .A2(cp_ctrl[111]), .B1(n328), .B2(cp_ctrl[107]), 
        .ZN(n145) );
  OAI211D0BWP U755 ( .A1(n148), .A2(n147), .B(n146), .C(n145), .ZN(n150) );
  OAI32D0BWP U756 ( .A1(n152), .A2(n151), .A3(n150), .B1(n149), .B2(n152), 
        .ZN(n196) );
  AOI22D0BWP U757 ( .A1(n257), .A2(cp_ctrl[2]), .B1(n315), .B2(cp_ctrl[34]), 
        .ZN(n160) );
  AOI22D0BWP U758 ( .A1(n323), .A2(cp_ctrl[50]), .B1(n328), .B2(cp_ctrl[42]), 
        .ZN(n159) );
  AOI22D0BWP U759 ( .A1(n324), .A2(cp_ctrl[46]), .B1(n368), .B2(cp_ctrl[62]), 
        .ZN(n158) );
  AOI22D0BWP U760 ( .A1(n326), .A2(cp_ctrl[30]), .B1(n313), .B2(cp_ctrl[54]), 
        .ZN(n156) );
  AOI22D0BWP U761 ( .A1(n329), .A2(cp_ctrl[6]), .B1(n327), .B2(cp_ctrl[26]), 
        .ZN(n155) );
  AOI22D0BWP U762 ( .A1(n318), .A2(cp_ctrl[10]), .B1(n316), .B2(cp_ctrl[18]), 
        .ZN(n154) );
  AOI22D0BWP U763 ( .A1(n292), .A2(cp_ctrl[14]), .B1(n312), .B2(cp_ctrl[22]), 
        .ZN(n153) );
  AN4D0BWP U764 ( .A1(n156), .A2(n155), .A3(n154), .A4(n153), .Z(n157) );
  ND4D0BWP U765 ( .A1(n160), .A2(n159), .A3(n158), .A4(n157), .ZN(n194) );
  AOI22D0BWP U766 ( .A1(n324), .A2(cp_ctrl[45]), .B1(n323), .B2(cp_ctrl[49]), 
        .ZN(n170) );
  AOI22D0BWP U767 ( .A1(n276), .A2(cp_ctrl[5]), .B1(n328), .B2(cp_ctrl[41]), 
        .ZN(n169) );
  AO22D0BWP U768 ( .A1(n325), .A2(cp_ctrl[57]), .B1(n368), .B2(cp_ctrl[61]), 
        .Z(n166) );
  AOI22D0BWP U769 ( .A1(n314), .A2(cp_ctrl[13]), .B1(n313), .B2(cp_ctrl[53]), 
        .ZN(n164) );
  AOI22D0BWP U770 ( .A1(n327), .A2(cp_ctrl[25]), .B1(n326), .B2(cp_ctrl[29]), 
        .ZN(n163) );
  AOI22D0BWP U771 ( .A1(n317), .A2(cp_ctrl[1]), .B1(n316), .B2(cp_ctrl[17]), 
        .ZN(n162) );
  AOI22D0BWP U772 ( .A1(n312), .A2(cp_ctrl[21]), .B1(n318), .B2(cp_ctrl[9]), 
        .ZN(n161) );
  ND4D0BWP U773 ( .A1(n164), .A2(n163), .A3(n162), .A4(n161), .ZN(n165) );
  AOI211D0BWP U774 ( .A1(n315), .A2(cp_ctrl[33]), .B(n166), .C(n165), .ZN(n168) );
  INVD0BWP U775 ( .I(n287), .ZN(n167) );
  AOI31D0BWP U776 ( .A1(n170), .A2(n169), .A3(n168), .B(n167), .ZN(n193) );
  AOI22D0BWP U777 ( .A1(n324), .A2(cp_ctrl[44]), .B1(n323), .B2(cp_ctrl[48]), 
        .ZN(n174) );
  AOI22D0BWP U778 ( .A1(n325), .A2(cp_ctrl[56]), .B1(n368), .B2(cp_ctrl[60]), 
        .ZN(n173) );
  AOI22D0BWP U779 ( .A1(n327), .A2(cp_ctrl[24]), .B1(n326), .B2(cp_ctrl[28]), 
        .ZN(n172) );
  AOI22D0BWP U780 ( .A1(n276), .A2(cp_ctrl[4]), .B1(n328), .B2(cp_ctrl[40]), 
        .ZN(n171) );
  ND4D0BWP U781 ( .A1(n174), .A2(n173), .A3(n172), .A4(n171), .ZN(n180) );
  AOI22D0BWP U782 ( .A1(n312), .A2(cp_ctrl[20]), .B1(n311), .B2(cp_ctrl[36]), 
        .ZN(n178) );
  AOI22D0BWP U783 ( .A1(n292), .A2(cp_ctrl[12]), .B1(n313), .B2(cp_ctrl[52]), 
        .ZN(n177) );
  AOI22D0BWP U784 ( .A1(n316), .A2(cp_ctrl[16]), .B1(n315), .B2(cp_ctrl[32]), 
        .ZN(n176) );
  AOI22D0BWP U785 ( .A1(n318), .A2(cp_ctrl[8]), .B1(n317), .B2(cp_ctrl[0]), 
        .ZN(n175) );
  ND4D0BWP U786 ( .A1(n178), .A2(n177), .A3(n176), .A4(n175), .ZN(n179) );
  NR2D0BWP U787 ( .A1(n180), .A2(n179), .ZN(n191) );
  AOI22D0BWP U788 ( .A1(n257), .A2(cp_ctrl[66]), .B1(n315), .B2(cp_ctrl[98]), 
        .ZN(n188) );
  AOI22D0BWP U789 ( .A1(n324), .A2(cp_ctrl[110]), .B1(n328), .B2(cp_ctrl[106]), 
        .ZN(n187) );
  AOI22D0BWP U790 ( .A1(n325), .A2(cp_ctrl[122]), .B1(n368), .B2(cp_ctrl[126]), 
        .ZN(n186) );
  AOI22D0BWP U791 ( .A1(n314), .A2(cp_ctrl[78]), .B1(n326), .B2(cp_ctrl[94]), 
        .ZN(n184) );
  AOI22D0BWP U792 ( .A1(n276), .A2(cp_ctrl[70]), .B1(n327), .B2(cp_ctrl[90]), 
        .ZN(n183) );
  AOI22D0BWP U793 ( .A1(n318), .A2(cp_ctrl[74]), .B1(n316), .B2(cp_ctrl[82]), 
        .ZN(n182) );
  AOI22D0BWP U794 ( .A1(n312), .A2(cp_ctrl[86]), .B1(n311), .B2(cp_ctrl[102]), 
        .ZN(n181) );
  AN4D0BWP U795 ( .A1(n184), .A2(n183), .A3(n182), .A4(n181), .Z(n185) );
  AN4D0BWP U796 ( .A1(n188), .A2(n187), .A3(n186), .A4(n185), .Z(n190) );
  INVD0BWP U797 ( .I(n245), .ZN(n189) );
  OAI22D0BWP U798 ( .A1(n191), .A2(n202), .B1(n190), .B2(n189), .ZN(n192) );
  AOI211D0BWP U799 ( .A1(n288), .A2(n194), .B(n193), .C(n192), .ZN(n195) );
  ND4D0BWP U800 ( .A1(n198), .A2(n197), .A3(n196), .A4(n195), .ZN(n199) );
  OAI32D0BWP U801 ( .A1(n364), .A2(n201), .A3(n200), .B1(cnt[7]), .B2(n199), 
        .ZN(n347) );
  INVD0BWP U802 ( .I(n202), .ZN(n306) );
  AOI22D0BWP U803 ( .A1(n329), .A2(cp_ctrl[388]), .B1(n327), .B2(cp_ctrl[408]), 
        .ZN(n206) );
  AOI22D0BWP U804 ( .A1(n292), .A2(cp_ctrl[396]), .B1(n312), .B2(cp_ctrl[404]), 
        .ZN(n205) );
  AOI22D0BWP U805 ( .A1(n318), .A2(cp_ctrl[392]), .B1(n257), .B2(cp_ctrl[384]), 
        .ZN(n204) );
  AOI22D0BWP U806 ( .A1(n316), .A2(cp_ctrl[400]), .B1(n315), .B2(cp_ctrl[416]), 
        .ZN(n203) );
  ND4D0BWP U807 ( .A1(n206), .A2(n205), .A3(n204), .A4(n203), .ZN(n216) );
  AOI22D0BWP U808 ( .A1(n288), .A2(cp_ctrl[414]), .B1(n287), .B2(cp_ctrl[413]), 
        .ZN(n214) );
  AOI22D0BWP U809 ( .A1(n276), .A2(cp_ctrl[391]), .B1(n327), .B2(cp_ctrl[411]), 
        .ZN(n209) );
  AOI22D0BWP U810 ( .A1(n314), .A2(cp_ctrl[399]), .B1(n312), .B2(cp_ctrl[407]), 
        .ZN(n208) );
  AOI22D0BWP U811 ( .A1(n318), .A2(cp_ctrl[395]), .B1(n316), .B2(cp_ctrl[403]), 
        .ZN(n207) );
  ND3D0BWP U812 ( .A1(n209), .A2(n208), .A3(n207), .ZN(n210) );
  AOI32D0BWP U813 ( .A1(n257), .A2(n305), .A3(cp_ctrl[387]), .B1(n210), .B2(
        n305), .ZN(n213) );
  AOI22D0BWP U814 ( .A1(n306), .A2(cp_ctrl[412]), .B1(n305), .B2(cp_ctrl[415]), 
        .ZN(n212) );
  AOI32D0BWP U815 ( .A1(n214), .A2(n213), .A3(n212), .B1(n211), .B2(n213), 
        .ZN(n215) );
  AOI21D0BWP U816 ( .A1(n306), .A2(n216), .B(n215), .ZN(n344) );
  AOI22D0BWP U817 ( .A1(cp_ctrl[390]), .A2(n329), .B1(cp_ctrl[410]), .B2(n327), 
        .ZN(n220) );
  AOI22D0BWP U818 ( .A1(cp_ctrl[398]), .A2(n292), .B1(cp_ctrl[406]), .B2(n312), 
        .ZN(n219) );
  AOI22D0BWP U819 ( .A1(cp_ctrl[394]), .A2(n318), .B1(cp_ctrl[386]), .B2(n317), 
        .ZN(n218) );
  AOI22D0BWP U820 ( .A1(cp_ctrl[402]), .A2(n316), .B1(n315), .B2(cp_ctrl[418]), 
        .ZN(n217) );
  ND4D0BWP U821 ( .A1(n220), .A2(n219), .A3(n218), .A4(n217), .ZN(n226) );
  AOI22D0BWP U822 ( .A1(n276), .A2(cp_ctrl[389]), .B1(n327), .B2(cp_ctrl[409]), 
        .ZN(n224) );
  AOI22D0BWP U823 ( .A1(n314), .A2(cp_ctrl[397]), .B1(n312), .B2(cp_ctrl[405]), 
        .ZN(n223) );
  AOI22D0BWP U824 ( .A1(n318), .A2(cp_ctrl[393]), .B1(n317), .B2(cp_ctrl[385]), 
        .ZN(n222) );
  AOI22D0BWP U825 ( .A1(n316), .A2(cp_ctrl[401]), .B1(n315), .B2(cp_ctrl[417]), 
        .ZN(n221) );
  ND4D0BWP U826 ( .A1(n224), .A2(n223), .A3(n222), .A4(n221), .ZN(n225) );
  AOI22D0BWP U827 ( .A1(n288), .A2(n226), .B1(n287), .B2(n225), .ZN(n343) );
  AOI22D0BWP U828 ( .A1(cp_ctrl[371]), .A2(n323), .B1(cp_ctrl[363]), .B2(n328), 
        .ZN(n236) );
  AOI22D0BWP U829 ( .A1(n329), .A2(cp_ctrl[327]), .B1(n326), .B2(cp_ctrl[351]), 
        .ZN(n235) );
  AO22D0BWP U830 ( .A1(cp_ctrl[379]), .A2(n325), .B1(cp_ctrl[367]), .B2(n324), 
        .Z(n232) );
  AOI22D0BWP U831 ( .A1(n292), .A2(cp_ctrl[335]), .B1(cp_ctrl[343]), .B2(n312), 
        .ZN(n230) );
  AOI22D0BWP U832 ( .A1(n327), .A2(cp_ctrl[347]), .B1(cp_ctrl[375]), .B2(n313), 
        .ZN(n229) );
  AOI22D0BWP U833 ( .A1(n257), .A2(cp_ctrl[323]), .B1(n316), .B2(cp_ctrl[339]), 
        .ZN(n228) );
  AOI22D0BWP U834 ( .A1(n318), .A2(cp_ctrl[331]), .B1(cp_ctrl[359]), .B2(n311), 
        .ZN(n227) );
  ND4D0BWP U835 ( .A1(n230), .A2(n229), .A3(n228), .A4(n227), .ZN(n231) );
  AOI211D0BWP U836 ( .A1(n315), .A2(cp_ctrl[355]), .B(n232), .C(n231), .ZN(
        n234) );
  AOI31D0BWP U837 ( .A1(n236), .A2(n235), .A3(n234), .B(n233), .ZN(n248) );
  AOI22D0BWP U838 ( .A1(n312), .A2(cp_ctrl[342]), .B1(n311), .B2(cp_ctrl[358]), 
        .ZN(n240) );
  AOI22D0BWP U839 ( .A1(n314), .A2(cp_ctrl[334]), .B1(n313), .B2(cp_ctrl[374]), 
        .ZN(n239) );
  AOI22D0BWP U840 ( .A1(n316), .A2(cp_ctrl[338]), .B1(n315), .B2(cp_ctrl[354]), 
        .ZN(n238) );
  AOI22D0BWP U841 ( .A1(n318), .A2(cp_ctrl[330]), .B1(n257), .B2(cp_ctrl[322]), 
        .ZN(n237) );
  ND4D0BWP U842 ( .A1(n240), .A2(n239), .A3(n238), .A4(n237), .ZN(n247) );
  AOI22D0BWP U843 ( .A1(n324), .A2(cp_ctrl[366]), .B1(n323), .B2(cp_ctrl[370]), 
        .ZN(n244) );
  AOI22D0BWP U844 ( .A1(n325), .A2(cp_ctrl[378]), .B1(n368), .B2(cp_ctrl[382]), 
        .ZN(n243) );
  AOI22D0BWP U845 ( .A1(n327), .A2(cp_ctrl[346]), .B1(n326), .B2(cp_ctrl[350]), 
        .ZN(n242) );
  AOI22D0BWP U846 ( .A1(n276), .A2(cp_ctrl[326]), .B1(n328), .B2(cp_ctrl[362]), 
        .ZN(n241) );
  ND4D0BWP U847 ( .A1(n244), .A2(n243), .A3(n242), .A4(n241), .ZN(n246) );
  OAI32D0BWP U848 ( .A1(n248), .A2(n247), .A3(n246), .B1(n245), .B2(n248), 
        .ZN(n341) );
  AOI22D0BWP U849 ( .A1(n317), .A2(cp_ctrl[258]), .B1(n315), .B2(cp_ctrl[290]), 
        .ZN(n256) );
  AOI22D0BWP U850 ( .A1(n329), .A2(cp_ctrl[262]), .B1(n328), .B2(cp_ctrl[298]), 
        .ZN(n255) );
  AOI22D0BWP U851 ( .A1(n324), .A2(cp_ctrl[302]), .B1(n323), .B2(cp_ctrl[306]), 
        .ZN(n254) );
  AOI22D0BWP U852 ( .A1(n327), .A2(cp_ctrl[282]), .B1(n314), .B2(cp_ctrl[270]), 
        .ZN(n252) );
  AOI22D0BWP U853 ( .A1(n326), .A2(cp_ctrl[286]), .B1(n313), .B2(cp_ctrl[310]), 
        .ZN(n251) );
  AOI22D0BWP U854 ( .A1(n318), .A2(cp_ctrl[266]), .B1(n316), .B2(cp_ctrl[274]), 
        .ZN(n250) );
  AOI22D0BWP U855 ( .A1(n312), .A2(cp_ctrl[278]), .B1(n311), .B2(cp_ctrl[294]), 
        .ZN(n249) );
  AN4D0BWP U856 ( .A1(n252), .A2(n251), .A3(n250), .A4(n249), .Z(n253) );
  ND4D0BWP U857 ( .A1(n256), .A2(n255), .A3(n254), .A4(n253), .ZN(n267) );
  AOI22D0BWP U858 ( .A1(n257), .A2(cp_ctrl[257]), .B1(n315), .B2(cp_ctrl[289]), 
        .ZN(n265) );
  AOI22D0BWP U859 ( .A1(n276), .A2(cp_ctrl[261]), .B1(n328), .B2(cp_ctrl[297]), 
        .ZN(n264) );
  AOI22D0BWP U860 ( .A1(n324), .A2(cp_ctrl[301]), .B1(n323), .B2(cp_ctrl[305]), 
        .ZN(n263) );
  AOI22D0BWP U861 ( .A1(n327), .A2(cp_ctrl[281]), .B1(n314), .B2(cp_ctrl[269]), 
        .ZN(n261) );
  AOI22D0BWP U862 ( .A1(n326), .A2(cp_ctrl[285]), .B1(n313), .B2(cp_ctrl[309]), 
        .ZN(n260) );
  AOI22D0BWP U863 ( .A1(n318), .A2(cp_ctrl[265]), .B1(n316), .B2(cp_ctrl[273]), 
        .ZN(n259) );
  AOI22D0BWP U864 ( .A1(n312), .A2(cp_ctrl[277]), .B1(n311), .B2(cp_ctrl[293]), 
        .ZN(n258) );
  AN4D0BWP U865 ( .A1(n261), .A2(n260), .A3(n259), .A4(n258), .Z(n262) );
  ND4D0BWP U866 ( .A1(n265), .A2(n264), .A3(n263), .A4(n262), .ZN(n266) );
  AOI22D0BWP U867 ( .A1(n288), .A2(n267), .B1(n287), .B2(n266), .ZN(n340) );
  AOI22D0BWP U868 ( .A1(n317), .A2(cp_ctrl[256]), .B1(n315), .B2(cp_ctrl[288]), 
        .ZN(n275) );
  AOI22D0BWP U869 ( .A1(n329), .A2(cp_ctrl[260]), .B1(n328), .B2(cp_ctrl[296]), 
        .ZN(n274) );
  AOI22D0BWP U870 ( .A1(n324), .A2(cp_ctrl[300]), .B1(n323), .B2(cp_ctrl[304]), 
        .ZN(n273) );
  AOI22D0BWP U871 ( .A1(n327), .A2(cp_ctrl[280]), .B1(n314), .B2(cp_ctrl[268]), 
        .ZN(n271) );
  AOI22D0BWP U872 ( .A1(n326), .A2(cp_ctrl[284]), .B1(n313), .B2(cp_ctrl[308]), 
        .ZN(n270) );
  AOI22D0BWP U873 ( .A1(n318), .A2(cp_ctrl[264]), .B1(n316), .B2(cp_ctrl[272]), 
        .ZN(n269) );
  AOI22D0BWP U874 ( .A1(n312), .A2(cp_ctrl[276]), .B1(n311), .B2(cp_ctrl[292]), 
        .ZN(n268) );
  AN4D0BWP U875 ( .A1(n271), .A2(n270), .A3(n269), .A4(n268), .Z(n272) );
  ND4D0BWP U876 ( .A1(n275), .A2(n274), .A3(n273), .A4(n272), .ZN(n286) );
  AOI22D0BWP U877 ( .A1(n317), .A2(cp_ctrl[259]), .B1(n315), .B2(cp_ctrl[291]), 
        .ZN(n284) );
  AOI22D0BWP U878 ( .A1(n276), .A2(cp_ctrl[263]), .B1(n328), .B2(cp_ctrl[299]), 
        .ZN(n283) );
  AOI22D0BWP U879 ( .A1(n324), .A2(cp_ctrl[303]), .B1(n323), .B2(cp_ctrl[307]), 
        .ZN(n282) );
  AOI22D0BWP U880 ( .A1(n327), .A2(cp_ctrl[283]), .B1(n314), .B2(cp_ctrl[271]), 
        .ZN(n280) );
  AOI22D0BWP U881 ( .A1(n326), .A2(cp_ctrl[287]), .B1(n313), .B2(cp_ctrl[311]), 
        .ZN(n279) );
  AOI22D0BWP U882 ( .A1(n318), .A2(cp_ctrl[267]), .B1(n316), .B2(cp_ctrl[275]), 
        .ZN(n278) );
  AOI22D0BWP U883 ( .A1(n312), .A2(cp_ctrl[279]), .B1(n311), .B2(cp_ctrl[295]), 
        .ZN(n277) );
  AN4D0BWP U884 ( .A1(n280), .A2(n279), .A3(n278), .A4(n277), .Z(n281) );
  ND4D0BWP U885 ( .A1(n284), .A2(n283), .A3(n282), .A4(n281), .ZN(n285) );
  AOI22D0BWP U886 ( .A1(n306), .A2(n286), .B1(n305), .B2(n285), .ZN(n339) );
  AOI22D0BWP U887 ( .A1(n288), .A2(cp_ctrl[314]), .B1(n287), .B2(cp_ctrl[313]), 
        .ZN(n310) );
  AOI22D0BWP U888 ( .A1(n288), .A2(cp_ctrl[318]), .B1(n287), .B2(cp_ctrl[317]), 
        .ZN(n291) );
  AOI22D0BWP U889 ( .A1(n306), .A2(cp_ctrl[316]), .B1(n305), .B2(cp_ctrl[319]), 
        .ZN(n290) );
  CKND2D0BWP U890 ( .A1(n359), .A2(cp_ctrl[383]), .ZN(n289) );
  AOI31D0BWP U891 ( .A1(n291), .A2(n290), .A3(n289), .B(n371), .ZN(n304) );
  AOI22D0BWP U892 ( .A1(n312), .A2(cp_ctrl[341]), .B1(n311), .B2(cp_ctrl[357]), 
        .ZN(n296) );
  AOI22D0BWP U893 ( .A1(n292), .A2(cp_ctrl[333]), .B1(n313), .B2(cp_ctrl[373]), 
        .ZN(n295) );
  AOI22D0BWP U894 ( .A1(n316), .A2(cp_ctrl[337]), .B1(n315), .B2(cp_ctrl[353]), 
        .ZN(n294) );
  AOI22D0BWP U895 ( .A1(n318), .A2(cp_ctrl[329]), .B1(n317), .B2(cp_ctrl[321]), 
        .ZN(n293) );
  ND4D0BWP U896 ( .A1(n296), .A2(n295), .A3(n294), .A4(n293), .ZN(n303) );
  AOI22D0BWP U897 ( .A1(n324), .A2(cp_ctrl[365]), .B1(n323), .B2(cp_ctrl[369]), 
        .ZN(n300) );
  AOI22D0BWP U898 ( .A1(n325), .A2(cp_ctrl[377]), .B1(n368), .B2(cp_ctrl[381]), 
        .ZN(n299) );
  AOI22D0BWP U899 ( .A1(n327), .A2(cp_ctrl[345]), .B1(n326), .B2(cp_ctrl[349]), 
        .ZN(n298) );
  AOI22D0BWP U900 ( .A1(n329), .A2(cp_ctrl[325]), .B1(n328), .B2(cp_ctrl[361]), 
        .ZN(n297) );
  ND4D0BWP U901 ( .A1(n300), .A2(n299), .A3(n298), .A4(n297), .ZN(n302) );
  OAI32D0BWP U902 ( .A1(n304), .A2(n303), .A3(n302), .B1(n301), .B2(n304), 
        .ZN(n309) );
  AOI22D0BWP U903 ( .A1(n306), .A2(cp_ctrl[312]), .B1(n305), .B2(cp_ctrl[315]), 
        .ZN(n308) );
  AOI32D0BWP U904 ( .A1(n310), .A2(n309), .A3(n308), .B1(n307), .B2(n309), 
        .ZN(n337) );
  AOI22D0BWP U905 ( .A1(n312), .A2(cp_ctrl[340]), .B1(n311), .B2(cp_ctrl[356]), 
        .ZN(n322) );
  AOI22D0BWP U906 ( .A1(n314), .A2(cp_ctrl[332]), .B1(n313), .B2(cp_ctrl[372]), 
        .ZN(n321) );
  AOI22D0BWP U907 ( .A1(n316), .A2(cp_ctrl[336]), .B1(n315), .B2(cp_ctrl[352]), 
        .ZN(n320) );
  AOI22D0BWP U908 ( .A1(n318), .A2(cp_ctrl[328]), .B1(n317), .B2(cp_ctrl[320]), 
        .ZN(n319) );
  ND4D0BWP U909 ( .A1(n322), .A2(n321), .A3(n320), .A4(n319), .ZN(n336) );
  AOI22D0BWP U910 ( .A1(n324), .A2(cp_ctrl[364]), .B1(n323), .B2(cp_ctrl[368]), 
        .ZN(n333) );
  AOI22D0BWP U911 ( .A1(n325), .A2(cp_ctrl[376]), .B1(n368), .B2(cp_ctrl[380]), 
        .ZN(n332) );
  AOI22D0BWP U912 ( .A1(n327), .A2(cp_ctrl[344]), .B1(n326), .B2(cp_ctrl[348]), 
        .ZN(n331) );
  AOI22D0BWP U913 ( .A1(n329), .A2(cp_ctrl[324]), .B1(n328), .B2(cp_ctrl[360]), 
        .ZN(n330) );
  ND4D0BWP U914 ( .A1(n333), .A2(n332), .A3(n331), .A4(n330), .ZN(n335) );
  OAI32D0BWP U915 ( .A1(n337), .A2(n336), .A3(n335), .B1(n334), .B2(n337), 
        .ZN(n338) );
  AN4D0BWP U916 ( .A1(n341), .A2(n340), .A3(n339), .A4(n338), .Z(n342) );
  AOI32D0BWP U917 ( .A1(n344), .A2(cnt[7]), .A3(n343), .B1(n342), .B2(n364), 
        .ZN(n345) );
  AOI22D0BWP U918 ( .A1(cnt[8]), .A2(n345), .B1(n367), .B2(cp_ctrl[419]), .ZN(
        n346) );
  OAI21D0BWP U919 ( .A1(cnt[8]), .A2(n347), .B(n346), .ZN(n10280) );
  INVD0BWP U920 ( .I(phase_cnt[6]), .ZN(n349) );
  CKND2D0BWP U921 ( .A1(phase_cnt[0]), .A2(phase_cnt[1]), .ZN(n358) );
  INVD0BWP U922 ( .I(phase_cnt[2]), .ZN(n380) );
  NR2D0BWP U923 ( .A1(n358), .A2(n380), .ZN(n356) );
  CKND2D0BWP U924 ( .A1(phase_cnt[3]), .A2(n356), .ZN(n355) );
  NR2D0BWP U925 ( .A1(n355), .A2(n354), .ZN(n353) );
  CKND2D0BWP U926 ( .A1(n353), .A2(phase_cnt[5]), .ZN(n350) );
  NR2D0BWP U927 ( .A1(n349), .A2(n350), .ZN(n348) );
  CKND2D0BWP U928 ( .A1(n348), .A2(phase_cnt[7]), .ZN(n414) );
  OA21D0BWP U929 ( .A1(n348), .A2(phase_cnt[7]), .B(n414), .Z(n1047) );
  AOI21D0BWP U930 ( .A1(n350), .A2(n349), .B(n348), .ZN(n1046) );
  OA21D0BWP U931 ( .A1(n353), .A2(phase_cnt[5]), .B(n350), .Z(n1045) );
  INVD0BWP U932 ( .I(phase_cnt[3]), .ZN(n378) );
  INVD0BWP U933 ( .I(phase_cnt[8]), .ZN(n415) );
  ND4D0BWP U934 ( .A1(phase_cnt[4]), .A2(n380), .A3(n378), .A4(n415), .ZN(n352) );
  OR4D0BWP U935 ( .A1(phase_cnt[6]), .A2(phase_cnt[5]), .A3(phase_cnt[7]), 
        .A4(n358), .Z(n351) );
  NR2D0BWP U936 ( .A1(n352), .A2(n351), .ZN(n357) );
  AOI211D0BWP U937 ( .A1(n354), .A2(n355), .B(n357), .C(n353), .ZN(n10440) );
  OA21D0BWP U938 ( .A1(phase_cnt[3]), .A2(n356), .B(n355), .Z(n1043) );
  AOI211D0BWP U939 ( .A1(n380), .A2(n358), .B(n357), .C(n356), .ZN(n10420) );
  OA21D0BWP U940 ( .A1(phase_cnt[0]), .A2(phase_cnt[1]), .B(n358), .Z(n1041)
         );
  CKND2D0BWP U941 ( .A1(n359), .A2(n374), .ZN(n363) );
  INVD0BWP U942 ( .I(n359), .ZN(n360) );
  AOI211D0BWP U943 ( .A1(n374), .A2(n360), .B(n365), .C(n364), .ZN(n362) );
  OAI32D0BWP U944 ( .A1(cnt[8]), .A2(n364), .A3(n363), .B1(n362), .B2(n361), 
        .ZN(n513) );
  AOI21D0BWP U945 ( .A1(n364), .A2(n363), .B(n362), .ZN(n514) );
  NR2D0BWP U946 ( .A1(n366), .A2(n365), .ZN(n413) );
  AOI21D0BWP U947 ( .A1(n368), .A2(n413), .B(n367), .ZN(n372) );
  CKND2D0BWP U948 ( .A1(cnt[6]), .A2(n372), .ZN(n369) );
  OAI31D0BWP U949 ( .A1(n371), .A2(n370), .A3(n411), .B(n369), .ZN(n515) );
  INVD0BWP U950 ( .I(n372), .ZN(n377) );
  CKND2D0BWP U951 ( .A1(n374), .A2(n373), .ZN(n409) );
  OR2D0BWP U952 ( .A1(n409), .A2(n406), .Z(n403) );
  OAI32D0BWP U953 ( .A1(n377), .A2(n376), .A3(n403), .B1(n375), .B2(n377), 
        .ZN(n516) );
  INVD0BWP U954 ( .I(p_code_vld), .ZN(n402) );
  NR2D0BWP U955 ( .A1(n378), .A2(n380), .ZN(n392) );
  NR2D0BWP U956 ( .A1(n378), .A2(phase_cnt[2]), .ZN(n391) );
  AOI22D0BWP U957 ( .A1(n392), .A2(p_code[14]), .B1(n391), .B2(p_code[10]), 
        .ZN(n387) );
  INVD0BWP U958 ( .I(phase_cnt[1]), .ZN(n379) );
  AOI21D0BWP U959 ( .A1(phase_cnt[4]), .A2(p_code[18]), .B(n379), .ZN(n386) );
  NR2D0BWP U960 ( .A1(n380), .A2(phase_cnt[3]), .ZN(n394) );
  NR3D0BWP U961 ( .A1(phase_cnt[2]), .A2(phase_cnt[3]), .A3(phase_cnt[4]), 
        .ZN(n393) );
  AOI22D0BWP U962 ( .A1(n394), .A2(p_code[6]), .B1(n393), .B2(p_code[2]), .ZN(
        n385) );
  AOI22D0BWP U963 ( .A1(n392), .A2(p_code[12]), .B1(n391), .B2(p_code[8]), 
        .ZN(n382) );
  AOI22D0BWP U964 ( .A1(n394), .A2(p_code[4]), .B1(n393), .B2(p_code[0]), .ZN(
        n381) );
  CKND2D0BWP U965 ( .A1(n382), .A2(n381), .ZN(n383) );
  AOI211D0BWP U966 ( .A1(phase_cnt[4]), .A2(p_code[16]), .B(phase_cnt[1]), .C(
        n383), .ZN(n384) );
  AO31D0BWP U967 ( .A1(n387), .A2(n386), .A3(n385), .B(n384), .Z(n401) );
  CKND2D0BWP U968 ( .A1(p_code[1]), .A2(n393), .ZN(n390) );
  AOI22D0BWP U969 ( .A1(n394), .A2(p_code[5]), .B1(n391), .B2(p_code[9]), .ZN(
        n389) );
  AOI22D0BWP U970 ( .A1(phase_cnt[4]), .A2(p_code[17]), .B1(n392), .B2(
        p_code[13]), .ZN(n388) );
  ND3D0BWP U971 ( .A1(n390), .A2(n389), .A3(n388), .ZN(n399) );
  AOI22D0BWP U972 ( .A1(n392), .A2(p_code[15]), .B1(n391), .B2(p_code[11]), 
        .ZN(n397) );
  AOI22D0BWP U973 ( .A1(n394), .A2(p_code[7]), .B1(n393), .B2(p_code[3]), .ZN(
        n396) );
  CKND2D0BWP U974 ( .A1(phase_cnt[4]), .A2(p_code[19]), .ZN(n395) );
  ND4D0BWP U975 ( .A1(phase_cnt[1]), .A2(n397), .A3(n396), .A4(n395), .ZN(n398) );
  OAI211D0BWP U976 ( .A1(phase_cnt[1]), .A2(n399), .B(phase_cnt[0]), .C(n398), 
        .ZN(n400) );
  OAI32D0BWP U977 ( .A1(n402), .A2(phase_cnt[0]), .A3(n401), .B1(n400), .B2(
        n402), .ZN(n10700) );
  AN3D0BWP U978 ( .A1(n413), .A2(cnt[2]), .A3(cnt[3]), .Z(n407) );
  OAI22D0BWP U979 ( .A1(n407), .A2(n405), .B1(n404), .B2(n403), .ZN(n517) );
  OAI32D0BWP U980 ( .A1(n407), .A2(n408), .A3(n409), .B1(n406), .B2(n407), 
        .ZN(n518) );
  AOI22D0BWP U981 ( .A1(cnt[2]), .A2(n413), .B1(n409), .B2(n408), .ZN(n519) );
  OAI32D0BWP U982 ( .A1(n413), .A2(n412), .A3(n411), .B1(n410), .B2(n413), 
        .ZN(n520) );
  MUX2ND0BWP U983 ( .I0(phase_cnt[8]), .I1(n415), .S(n414), .ZN(n10480) );
endmodule


module digital_ctrl_top ( H_VDD, VSS, clk, rstn, en_g, wr_data_in_g, p_en, p_code, 
        couple_en, cp_ctrl, rd_vld_g, rd_data_out_g, p_out_vld_g, p_out_g );
	inout H_VDD;
	inout VSS;
  input [159:0] p_code;
  output [3359:0] cp_ctrl;
  input clk, rstn, en_g, wr_data_in_g, p_en;
  output couple_en, rd_vld_g, rd_data_out_g, p_out_vld_g, p_out_g;
  wire   wr_data_in_g_d2;
  wire   [7:0] rd_vld_bus;
  wire   [7:0] rd_data_out_bus;
  wire   [7:0] p_out_vld_bus;
  wire   [7:0] p_out_bus;
  wire   [7:0] wr_vld_bus;
  wire   [7:0] rd_rdy_bus;
  wire   [7:0] p_code_vld_bus;

  global_ctrl global_ctrl ( .VSS(VSS), .H_VDD(H_VDD), .clk(clk), .rstn(rstn), .p_en(p_en), .en_g(en_g), 
        .wr_data_in_g(wr_data_in_g), .rd_vld_bus(rd_vld_bus), 
        .rd_data_out_bus(rd_data_out_bus), .p_out_vld_bus(p_out_vld_bus), 
        .p_out_bus(p_out_bus), .couple_en(couple_en), .wr_data_in_g_d2(
        wr_data_in_g_d2), .rd_vld_g(rd_vld_g), .rd_data_out_g(rd_data_out_g), 
        .wr_vld_bus(wr_vld_bus), .rd_rdy_bus(rd_rdy_bus), .p_code_vld_bus(
        p_code_vld_bus), .p_out_vld_g(p_out_vld_g), .p_out_g(p_out_g) );
 local_ctrl_row local_ctrl_row_7 ( .VSS(VSS), .H_VDD(H_VDD), .clk(clk), .rstn(rstn), .wr_vld(
        wr_vld_bus[0]), .wr_data_in(wr_data_in_g_d2), .rd_rdy(rd_rdy_bus[0]), 
        .p_code_vld(p_code_vld_bus[0]), .p_code(p_code[19:0]), .cp_ctrl(
        cp_ctrl[419:0]), .rd_vld(rd_vld_bus[0]), .rd_data_out(
        rd_data_out_bus[0]), .p_out_vld(p_out_vld_bus[0]), .p_out(p_out_bus[0]) );
  local_ctrl_row local_ctrl_row_6 ( .VSS(VSS), .H_VDD(H_VDD), .clk(clk), .rstn(rstn), .wr_vld(
        wr_vld_bus[1]), .wr_data_in(wr_data_in_g_d2), .rd_rdy(rd_rdy_bus[1]), 
        .p_code_vld(p_code_vld_bus[1]), .p_code(p_code[39:20]), .cp_ctrl(
        cp_ctrl[839:420]), .rd_vld(rd_vld_bus[1]), .rd_data_out(
        rd_data_out_bus[1]), .p_out_vld(p_out_vld_bus[1]), .p_out(p_out_bus[1]) );
  local_ctrl_row local_ctrl_row_5 ( .VSS(VSS), .H_VDD(H_VDD), .clk(clk), .rstn(rstn), .wr_vld(
        wr_vld_bus[2]), .wr_data_in(wr_data_in_g_d2), .rd_rdy(rd_rdy_bus[2]), 
        .p_code_vld(p_code_vld_bus[2]), .p_code(p_code[59:40]), .cp_ctrl(
        cp_ctrl[1259:840]), .rd_vld(rd_vld_bus[2]), .rd_data_out(
        rd_data_out_bus[2]), .p_out_vld(p_out_vld_bus[2]), .p_out(p_out_bus[2]) );
  local_ctrl_row local_ctrl_row_4 ( .VSS(VSS), .H_VDD(H_VDD), .clk(clk), .rstn(rstn), .wr_vld(
        wr_vld_bus[3]), .wr_data_in(wr_data_in_g_d2), .rd_rdy(rd_rdy_bus[3]), 
        .p_code_vld(p_code_vld_bus[3]), .p_code(p_code[79:60]), .cp_ctrl(
        cp_ctrl[1679:1260]), .rd_vld(rd_vld_bus[3]), .rd_data_out(
        rd_data_out_bus[3]), .p_out_vld(p_out_vld_bus[3]), .p_out(p_out_bus[3]) );
  local_ctrl_row local_ctrl_row_3 ( .VSS(VSS), .H_VDD(H_VDD), .clk(clk), .rstn(rstn), .wr_vld(
        wr_vld_bus[4]), .wr_data_in(wr_data_in_g_d2), .rd_rdy(rd_rdy_bus[4]), 
        .p_code_vld(p_code_vld_bus[4]), .p_code(p_code[99:80]), .cp_ctrl(
        cp_ctrl[2099:1680]), .rd_vld(rd_vld_bus[4]), .rd_data_out(
        rd_data_out_bus[4]), .p_out_vld(p_out_vld_bus[4]), .p_out(p_out_bus[4]) );
  local_ctrl_row local_ctrl_row_2 ( .VSS(VSS), .H_VDD(H_VDD), .clk(clk), .rstn(rstn), .wr_vld(
        wr_vld_bus[5]), .wr_data_in(wr_data_in_g_d2), .rd_rdy(rd_rdy_bus[5]), 
        .p_code_vld(p_code_vld_bus[5]), .p_code(p_code[119:100]), .cp_ctrl(
        cp_ctrl[2519:2100]), .rd_vld(rd_vld_bus[5]), .rd_data_out(
        rd_data_out_bus[5]), .p_out_vld(p_out_vld_bus[5]), .p_out(p_out_bus[5]) );
  local_ctrl_row local_ctrl_row_1 ( .VSS(VSS), .H_VDD(H_VDD), .clk(clk), .rstn(rstn), .wr_vld(
        wr_vld_bus[6]), .wr_data_in(wr_data_in_g_d2), .rd_rdy(rd_rdy_bus[6]), 
        .p_code_vld(p_code_vld_bus[6]), .p_code(p_code[139:120]), .cp_ctrl(
        cp_ctrl[2939:2520]), .rd_vld(rd_vld_bus[6]), .rd_data_out(
        rd_data_out_bus[6]), .p_out_vld(p_out_vld_bus[6]), .p_out(p_out_bus[6]) );
  local_ctrl_row local_ctrl_row_0 ( .VSS(VSS), .H_VDD(H_VDD), .clk(clk), .rstn(rstn), .wr_vld(
        wr_vld_bus[7]), .wr_data_in(wr_data_in_g_d2), .rd_rdy(rd_rdy_bus[7]), 
        .p_code_vld(p_code_vld_bus[7]), .p_code(p_code[159:140]), .cp_ctrl(
        cp_ctrl[3359:2940]), .rd_vld(rd_vld_bus[7]), .rd_data_out(
        rd_data_out_bus[7]), .p_out_vld(p_out_vld_bus[7]), .p_out(p_out_bus[7]) );
endmodule

