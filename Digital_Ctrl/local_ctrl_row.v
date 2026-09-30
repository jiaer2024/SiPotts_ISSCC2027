////////////////////////////////////////////////////////////////////////////////
//// Designer: Huang Yingna
//// Create Date: 12/3/2026 14:50 
//// Project Name: MBPM 
//// Module Name: local_ctrl_row 
//// Target Technology: TSMC 40nm 
//// Description: local controller for each spin unit_cell 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

`include "../rtl/define.v"

module local_ctrl_row(
	// inputs
	input wire						clk,		// Clock signal
	input wire 						rstn, 		// reset, active low
	// uplink
	input wire 						wr_vld, 	
	input wire 						wr_data_in, 
	input wire 						rd_rdy, 	
	// downlink
	input wire 						p_code_vld,
	input wire [`COL_PHASE_CNT-1:0] p_code,
	
	// outputs
	// uplink
	output reg [`COL_CTRL_CNT-1:0] 	cp_ctrl, 		
	output reg 						rd_vld, 	
	output reg 						rd_data_out,
	// downlink
	output reg 						p_out_vld,
	output reg 						p_out	
);

reg [`COL_CTRL_CNT_BW-1:0] cnt;
reg [`COL_CTRL_CNT_BW-1:0] phase_cnt;

////////////////////////////////////////////////////////////
// uplink
////////////////////////////////////////////////////////////
// counter
always @(posedge clk, negedge rstn) begin
	if (!rstn)
		cnt <= 'd0;
	else if (cnt == `COL_CTRL_CNT-1)
		cnt <= 'd0;
	else if (wr_vld | rd_rdy) 
		cnt <= cnt + 1'b1;
end

// write 
always @(posedge clk, negedge rstn) begin
	if (!rstn) 
		cp_ctrl <= 'd0;
	else if (wr_vld) 
		cp_ctrl <= {wr_data_in, cp_ctrl[`COL_CTRL_CNT-1:1]};
end

// read
always @(posedge clk, negedge rstn) begin
	if (!rstn)
		rd_vld <= 1'b0;
	else
		rd_vld <= rd_rdy;	
end

always @(posedge clk, negedge rstn) begin
	if (!rstn) 
		rd_data_out <= 1'b0;
	else if (rd_rdy) 
		rd_data_out <= cp_ctrl[cnt];
end

////////////////////////////////////////////////////////////
// downlink
////////////////////////////////////////////////////////////
always @(posedge clk, negedge rstn) begin
	if (!rstn) begin
		phase_cnt <= 'd0;
		p_out_vld <= 1'b0;
		p_out <= 1'b0;
	end else if (p_code_vld) begin
		phase_cnt <= phase_cnt == `COL_PHASE_CNT-1 ? 'd0 : phase_cnt+1'b1;
		p_out_vld <= 1'b1;
		p_out <= p_code[phase_cnt];
	end else begin
		p_out_vld <= 1'b0;
		p_out <= 1'b0;
	end
end

endmodule
