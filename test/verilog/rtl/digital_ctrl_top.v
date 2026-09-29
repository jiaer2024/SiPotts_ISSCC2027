////////////////////////////////////////////////////////////////////////////////
//// Designer: Huang Yingna
//// Create Date: 12/3/2026 16:35 
//// Project Name: MBPM 
//// Module Name: digital_ctrl_top 
//// Target Technology: TSMC 40nm 
//// Description: top module of the digital controller 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

`include "../rtl/define.v"

module digital_ctrl_top(
	// inputs
	input wire									clk,		// Clock signal
	input wire 									rstn, 		// reset, active low
	input wire 									en_g,
	input wire 									wr_data_in_g,
	input wire 				 					p_en,
	input wire [`COL_PHASE_CNT*`ROW_CNT-1:0] 	p_code,
	
	// outputs
	output wire 								couple_en,
	output wire [`TOTAL_CNT-1:0] 				cp_ctrl,
	output reg 									rd_vld_g,
	output reg 									rd_data_out_g,
	output wire 								p_out_vld_g,
	output wire 								p_out_g
);

////////////////////////////////////////////////////////////
// cp_ctrleters
////////////////////////////////////////////////////////////
localparam S_IDLE = 2'b00;
localparam S_WRITE = 2'b01;
localparam S_READ = 2'b11;
localparam S_DONE = 2'b10;

////////////////////////////////////////////////////////////
// internal signals 
////////////////////////////////////////////////////////////
wire [`ROW_CNT-1:0] 				wr_vld_bus;
wire 								wr_data_in_g_d2;

wire [`ROW_CNT-1:0] 				p_code_vld_bus;
wire [`ROW_CNT-1:0] 				rd_rdy_bus;
reg [`ROW_CNT-1:0] 					rd_vld_bus; 
reg [`ROW_CNT-1:0] 					rd_data_out_bus; 

reg [`ROW_CNT-1:0] 					p_out_vld_bus;
reg [`ROW_CNT-1:0] 					p_out_bus;


////////////////////////////////////////////////////////////
// initialization 
////////////////////////////////////////////////////////////

global_ctrl global_ctrl(
	// inputs
	.clk	        	(clk),	
	.rstn 	      		(rstn), 	
	.p_en 				(p_en),
	.en_g 				(en_g),
	.wr_data_in_g 		(wr_data_in_g),
	.rd_vld_bus   		(rd_vld_bus),
	.rd_data_out_bus	(rd_data_out_bus),
	.p_out_vld_bus 		(p_out_vld_bus),
	.p_out_bus 			(p_out_bus),
	
	// outputs
	.couple_en 			(couple_en),
	.wr_data_in_g_d2 	(wr_data_in_g_d2),
	.rd_vld_g    		(rd_vld_g),
	.rd_data_out_g 		(rd_data_out_g),
	.wr_vld_bus			(wr_vld_bus),
	.rd_rdy_bus 		(rd_rdy_bus),
	.p_code_vld_bus 	(p_code_vld_bus),
	.p_out_vld_g 		(p_out_vld_g),
	.p_out_g 			(p_out_g)
);

genvar i;
generate
	for (i=0; i<`ROW_CNT; i=i+1) begin: ctrl_row 
		local_ctrl_row ctrl_row_i(
			.clk	 			(clk),	
			.rstn 				(rstn), 	
			.wr_vld 			(wr_vld_bus[i]),
			.wr_data_in  		(wr_data_in_g_d2),
			.rd_rdy 			(rd_rdy_bus[i]),
			.p_code_vld 		(p_code_vld_bus[i]),
			.p_code 			(p_code[`COL_PHASE_CNT*(i+1)-1-:`COL_PHASE_CNT]),
		
			.cp_ctrl 			(cp_ctrl[`COL_CTRL_CNT*(i+1)-1-:`COL_CTRL_CNT]),
			.rd_vld 			(rd_vld_bus[i]),
			.rd_data_out 		(rd_data_out_bus[i]),
			.p_out_vld 			(p_out_vld_bus[i]),
			.p_out 				(p_out_bus[i])
		);	
	end
endgenerate

endmodule
