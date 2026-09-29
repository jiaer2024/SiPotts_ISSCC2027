////////////////////////////////////////////////////////////////////////////////
//// Designer: Huang Yingna
//// Create Date: 12/3/2026 15:27 
//// Project Name: MBPM 
//// Module Name: digital_ctrl_top_tb 
//// Target Technology: TSMC 40nm 
//// Description: testbench for one row of local controller 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

`include "../rtl/define.v"

module digital_ctrl_top_tb(
);

// parameters
localparam CLK_PERIOD = 10;

reg  					clk;	
reg  					rstn; 
reg 					en_g;
reg  					wr_vld;
reg  					wr_data_in_g;
reg [`ROW_CNT-1:0] 		p_en;
reg [`UC_CNT-1:0] 		p_code;

wire 					couple_en;
wire [`TOTAL_CNT-1:0] 	cp_ctrl;
wire 					rd_vld;
wire 					rd_data_out;
wire 					p_out_vld;
wire 					p_out;

reg [`ROW_CNT_BW+`COL_CTRL_CNT_BW-1:0] wr_vld_cnt;
////////////////////////////////////////////////////////////
// input control
////////////////////////////////////////////////////////////
always #(CLK_PERIOD/2) clk = ~clk;

integer i;
integer j;

initial begin
	$sdf_annotate("../../enc/output/local_ctrl_row/local_ctrl_row_enc.sdf",digital_ctrl_top.ctrl_row[0].ctrl_row_i,,,"minimum");
	$sdf_annotate("../../enc/output/local_ctrl_row/local_ctrl_row_enc.sdf",digital_ctrl_top.ctrl_row[1].ctrl_row_i,,,"minimum");
	$sdf_annotate("../../enc/output/local_ctrl_row/local_ctrl_row_enc.sdf",digital_ctrl_top.ctrl_row[2].ctrl_row_i,,,"minimum");
	$sdf_annotate("../../enc/output/local_ctrl_row/local_ctrl_row_enc.sdf",digital_ctrl_top.ctrl_row[3].ctrl_row_i,,,"minimum");
	$sdf_annotate("../../enc/output/local_ctrl_row/local_ctrl_row_enc.sdf",digital_ctrl_top.ctrl_row[4].ctrl_row_i,,,"minimum");
	$sdf_annotate("../../enc/output/local_ctrl_row/local_ctrl_row_enc.sdf",digital_ctrl_top.ctrl_row[5].ctrl_row_i,,,"minimum");
	$sdf_annotate("../../enc/output/local_ctrl_row/local_ctrl_row_enc.sdf",digital_ctrl_top.ctrl_row[6].ctrl_row_i,,,"minimum");
	$sdf_annotate("../../enc/output/local_ctrl_row/local_ctrl_row_enc.sdf",digital_ctrl_top.ctrl_row[7].ctrl_row_i,,,"minimum");
	$sdf_annotate("../../enc/output/global_ctrl/global_ctrl_enc.sdf",digital_ctrl_top.global_ctrl,,,"minimum");
	// reset
	clk = 1'b0;
	rstn = 1'b0;
	en_g = 1'b0;
	p_en = 'd0;
	p_code = 'd0;

	// uplink
	#(CLK_PERIOD*3/2)
	rstn = 1'b1;
	#(CLK_PERIOD+4)
	en_g = 1'b1;
	#(CLK_PERIOD)
	en_g = 1'b0;
	#(CLK_PERIOD*120000) 

	//downlink
	#(CLK_PERIOD)
	p_en = 1'b1;
	#(CLK_PERIOD*4)
	p_en = 1'b0;
	for(i=0;i<`ROW_CNT;i=i+1) begin
		for(j=0;j<`COL_PHASE_CNT;j=j+1)
			p_code[i*`ROW_CNT+j] = j%2; 
		p_code = $random;
	end
	
	#(CLK_PERIOD)
	p_en = 'd0;

	#(CLK_PERIOD*10000) $finish;
end

always @(posedge clk, negedge rstn) begin
	if (!rstn) begin
		wr_vld <= 1'b0;
	end else if (en_g) begin
		wr_vld <= 1'b1; 
	end else if (wr_vld_cnt == `COL_CTRL_CNT * `ROW_CNT - 1) begin
		wr_vld <= 1'b0;
	end
end

always @(posedge clk, negedge rstn) begin
	if (!rstn) begin
		wr_vld_cnt <= 'd0;
	end else if (wr_vld) begin
		wr_vld_cnt <= wr_vld_cnt + 1'b1; 
	end else if (wr_vld_cnt == `COL_CTRL_CNT * `ROW_CNT - 1) begin
		wr_vld_cnt <= 'd0;
	end
end

always @(posedge clk, negedge rstn) begin
	if (!rstn) 
		wr_data_in_g <= 1'b0;
	else if (wr_vld) 
		#4
		wr_data_in_g <= $random;
	else
		wr_data_in_g <= 1'b0;
end

////////////////////////////////////////////////////////////
// Instantiation
////////////////////////////////////////////////////////////
digital_ctrl_top digital_ctrl_top(
	// inputs
	.clk	 			(clk),	
	.rstn 				(rstn), 	
	.en_g 				(en_g),
	.wr_data_in_g  		(wr_data_in_g),
	.p_en 				(p_en),
	.p_code 			(p_code),
	
	// outputs
	.couple_en 			(couple_en),
	.cp_ctrl 			(cp_ctrl),
	.rd_vld_g 			(rd_vld_g),
	.rd_data_out_g  	(rd_data_out_g),
	.p_out_vld_g 		(p_out_vld_g),
	.p_out_g 			(p_out_g)
);
endmodule
