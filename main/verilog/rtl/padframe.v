////////////////////////////////////////////////////////////////////////////////
//// Designer: Huang Yingna
//// Create Date: 19/4/2026 14:31 
//// Project Name: MBPM 
//// Module Name: padframe 
//// Target Technology: TSMC 40nm 
//// Description: Pad frame 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module padframe(
	//////////
	// inputs 
	//////////
	// offchip --> pad --> core
	input wire [3:0] pad_tst_us_sel_2, 
	input wire [3:0] pad_tst_us_sel_1,
	input wire [3:0] pad_tst_us_sel_0,
	input wire pad_tst_clk ,
	input wire pad_tst_en_g ,
	input wire pad_tst_wr_data_in_g ,
	input wire pad_tst_p_en ,
	input wire pad_rstn ,
	input wire pad_clk ,
	input wire pad_en_g ,
	input wire pad_wr_data_in_g ,
	input wire pad_p_en ,
	input wire [5:0] pad_tst_b2_ctrl,
	// core --> pad --> offchip
	input wire tst_couple_en ,
	input wire tst_rd_vld_g ,
	input wire tst_rd_data_out_g ,
	input wire tst_p_out_vld_g ,
	input wire tst_p_out_g ,
	input wire rd_data_out_g ,
	input wire rd_vld_g ,
	input wire p_out_vld_g ,
	input wire p_out_g ,
	input wire couple_en ,
	
	//////////
	// outputs 
	//////////
	// offchip --> pad --> core
	output wire [3:0] tst_us_sel_2, 
	output wire [3:0] tst_us_sel_1,
	output wire [3:0] tst_us_sel_0,
	output wire tst_clk ,
	output wire tst_en_g ,
	output wire tst_wr_data_in_g ,
	output wire tst_p_en ,
	output wire rstn ,
	output wire clk ,
	output wire en_g ,
	output wire wr_data_in_g ,
	output wire p_en ,
	output wire [5:0] tst_b2_ctrl,
	// core --> pad --> offchip
	output wire pad_tst_couple_en ,
	output wire pad_tst_rd_vld_g ,
	output wire pad_tst_rd_data_out_g ,
	output wire pad_tst_p_out_vld_g ,
	output wire pad_tst_p_out_g ,
	output wire pad_rd_data_out_g ,
	output wire pad_rd_vld_g ,
	output wire pad_p_out_vld_g ,
	output wire pad_p_out_g ,
	output wire pad_couple_en ,
	//////////
	// inout 
	//////////
	inout wire tst_je_ro_1 ,
	inout wire tst_je_ro_2 ,
	inout wire tst_zq_ro_1, 
	inout wire tst_zq_ro_2, 
	inout wire tst_zq_ro_3, 
	inout wire tst_ro_tst,
	inout wire [4:0] tst_b3_f,
	inout wire p_mod ,
	inout wire p_ota_vb ,
	inout wire b3_cvb ,
	inout wire cp_sel ,
	inout wire b2_cvb2 ,
	inout wire b2_cvb1 ,
	inout wire osc_vb,
	inout wire tst_p_ota_vb ,
	inout wire tst_cp_sel ,
	inout wire tst_p_mod ,
	inout wire tst_b3_cvb ,
	inout wire tst_b2_cvb2 ,
	inout wire tst_b2_cvb1 ,
	inout wire tst_osc_vb ,
	inout wire tst_us_ro_0 ,
	inout wire tst_us_ro_1 ,
	inout wire tst_us_ro_2, 
	inout wire tst_sabil_bk, 
	inout wire sabil_bk 
);

////////////////////////////////////////
// input: offchip --> pad --> core
////////////////////////////////////////
// test chip 
PDDDGZ io_tst_us_sel_2_2 (.PAD(pad_tst_us_sel_2[2]), .C(tst_us_sel_2[2]));
PDDDGZ io_tst_us_sel_2_1 (.PAD(pad_tst_us_sel_2[1]), .C(tst_us_sel_2[1]));
PDDDGZ io_tst_us_sel_2_0 (.PAD(pad_tst_us_sel_2[0]), .C(tst_us_sel_2[0]));
PDDDGZ io_tst_us_sel_1_3 (.PAD(pad_tst_us_sel_1[3]), .C(tst_us_sel_1[3]));
PDDDGZ io_tst_us_sel_1_2 (.PAD(pad_tst_us_sel_1[2]), .C(tst_us_sel_1[2]));
PDDDGZ io_tst_us_sel_1_1 (.PAD(pad_tst_us_sel_1[1]), .C(tst_us_sel_1[1]));
PDDDGZ io_tst_us_sel_1_0 (.PAD(pad_tst_us_sel_1[0]), .C(tst_us_sel_1[0]));
PDDDGZ io_tst_us_sel_0_3 (.PAD(pad_tst_us_sel_0[3]), .C(tst_us_sel_0[3]));
PDDDGZ io_tst_us_sel_0_2 (.PAD(pad_tst_us_sel_0[2]), .C(tst_us_sel_0[2]));
PDDDGZ io_tst_us_sel_0_1 (.PAD(pad_tst_us_sel_0[1]), .C(tst_us_sel_0[1]));
PDDDGZ io_tst_us_sel_0_0 (.PAD(pad_tst_us_sel_0[0]), .C(tst_us_sel_0[0]));

PDDDGZ io_tst_clk (.PAD(pad_tst_clk), .C(tst_clk));
PDDDGZ io_tst_en_g (.PAD(pad_tst_en_g), .C(tst_en_g));
PDDDGZ io_tst_wr_data_in_g (.PAD(pad_tst_wr_data_in_g), .C(tst_wr_data_in_g));
PDDDGZ io_tst_p_en (.PAD(pad_tst_p_en), .C(tst_p_en));
PDDDGZ io_tst_b2_ctrl_0 (.PAD(pad_tst_b2_ctrl[0]), .C(tst_b2_ctrl[0]));
PDDDGZ io_tst_b2_ctrl_1 (.PAD(pad_tst_b2_ctrl[1]), .C(tst_b2_ctrl[1]));
PDDDGZ io_tst_b2_ctrl_2 (.PAD(pad_tst_b2_ctrl[2]), .C(tst_b2_ctrl[2]));
PDDDGZ io_tst_b2_ctrl_3 (.PAD(pad_tst_b2_ctrl[3]), .C(tst_b2_ctrl[3]));
PDDDGZ io_tst_b2_ctrl_4 (.PAD(pad_tst_b2_ctrl[4]), .C(tst_b2_ctrl[4]));
PDDDGZ io_tst_b2_ctrl_5 (.PAD(pad_tst_b2_ctrl[5]), .C(tst_b2_ctrl[5]));


// main chip 
PDDDGZ io_rstn (.PAD(pad_rstn), .C(rstn));
PDDDGZ io_clk (.PAD(pad_clk), .C(clk));
PDDDGZ io_en_g (.PAD(pad_en_g), .C(en_g));
PDDDGZ io_wr_data_in_g (.PAD(pad_wr_data_in_g), .C(wr_data_in_g));
PDDDGZ io_p_en (.PAD(pad_p_en), .C(p_en));

PDDDGZ io_tst_us_sel_2_3 (.PAD(pad_tst_us_sel_2[3]), .C(tst_us_sel_2[3]));
                                                                      
////////////////////////////////////////
// output: core --> pad --> offchip
////////////////////////////////////////
// main chip digital
PDO24CDG io_tst_couple_en (.I(tst_couple_en), .PAD(pad_tst_couple_en));
PDO24CDG io_tst_rd_vld_g (.I(tst_rd_vld_g), .PAD(pad_tst_rd_vld_g));
PDO24CDG io_tst_rd_data_out_g (.I(tst_rd_data_out_g), .PAD(pad_tst_rd_data_out_g));
PDO24CDG io_tst_p_out_vld_g (.I(tst_p_out_vld_g), .PAD(pad_tst_p_out_vld_g));
PDO24CDG io_tst_p_out_g (.I(tst_p_out_g), .PAD(pad_tst_p_out_g));

PDO24CDG io_rd_data_out_g (.I(rd_data_out_g), .PAD(pad_rd_data_out_g));
PDO24CDG io_rd_vld_g (.I(rd_vld_g), .PAD(pad_rd_vld_g));
PDO24CDG io_p_out_vld_g (.I(p_out_vld_g), .PAD(pad_p_out_vld_g));
PDO24CDG io_p_out_g (.I(p_out_g), .PAD(pad_p_out_g));
PDO24CDG io_couple_en (.I(couple_en), .PAD(pad_couple_en));

////////////////////////////////////////
// analog io
////////////////////////////////////////
// two body test
PDB3AC io_tst_je_ro_1 (.AIO(tst_je_ro_1));
PDB3AC io_tst_je_ro_2 (.AIO(tst_je_ro_2));

// three body test
PDB3AC io_tst_zq_ro_1 (.AIO(tst_zq_ro_1));
PDB3AC io_tst_zq_ro_2 (.AIO(tst_zq_ro_2));
PDB3AC io_tst_zq_ro_3 (.AIO(tst_zq_ro_3));

// ro test
PDB3AC io_tst_ro_tst (.AIO(tst_ro_tst));

PDB3AC io_tst_b3_f_0 (.AIO(tst_b3_f[0]));
PDB3AC io_tst_b3_f_1 (.AIO(tst_b3_f[1]));
PDB3AC io_tst_b3_f_2 (.AIO(tst_b3_f[2]));
PDB3AC io_tst_b3_f_3 (.AIO(tst_b3_f[3]));
PDB3AC io_tst_b3_f_4 (.AIO(tst_b3_f[4]));

// main chip analog
PDB3AC io_p_mod (.AIO(p_mod));
PDB3AC io_p_ota_vb (.AIO(p_ota_vb));
PDB3AC io_b3_cvb (.AIO(b3_cvb));
PDB3AC io_cp_sel (.AIO(cp_sel));
PDB3AC io_b2_cvb2 (.AIO(b2_cvb2));
PDB3AC io_b2_cvb1 (.AIO(b2_cvb1));
PDB3AC io_osc_vb (.AIO(osc_vb));

// test chip: America Map Coloring
PDB3AC io_tst_p_ota_vb (.AIO(tst_p_ota_vb));
PDB3AC io_tst_cp_sel (.AIO(tst_cp_sel));
PDB3AC io_tst_p_mod (.AIO(tst_p_mod));
PDB3AC io_tst_b3_cvb (.AIO(tst_b3_cvb));
PDB3AC io_tst_b2_cvb2 (.AIO(tst_b2_cvb2));
PDB3AC io_tst_b2_cvb1 (.AIO(tst_b2_cvb1));
PDB3AC io_tst_osc_vb (.AIO(tst_osc_vb));
PDB3AC io_tst_us_ro_0 (.AIO(tst_us_ro_0));
PDB3AC io_tst_us_ro_1 (.AIO(tst_us_ro_1));
PDB3AC io_tst_us_ro_2 (.AIO(tst_us_ro_2));
PDB3AC io_tst_sabil_bk (.AIO(tst_sabil_bk));
PDB3AC io_sabil_bk (.AIO(sabil_bk));


endmodule
