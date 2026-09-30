////////////////////////////////////////////////////////////////////////////////
//// Designer: Huang Yingna
//// Create Date: 12/3/2026 16:35 
//// Project Name: MBPM 
//// Module Name: global_ctrl 
//// Target Technology: TSMC 40nm 
//// Description: global controller for all the local controllers 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

`include "../rtl/define.v"

module global_ctrl(
	// inputs
	input wire						clk,				// Clock signal
	input wire 						rstn, 				// reset, active low
	input wire 						p_en,
	//uplink
	input wire 						en_g, 				// pulse, enable of FSM
	input wire 						wr_data_in_g, 		// parameter to be uploaded
	input wire [`ROW_CNT-1:0] 		rd_vld_bus, 		// from local_ctrl_row 
	input wire [`ROW_CNT-1:0] 		rd_data_out_bus, 	// from local_Ctrl_row
	//downlink
	input wire [`ROW_CNT-1:0] 		p_out_vld_bus,
	input wire [`ROW_CNT-1:0] 		p_out_bus,
	
	// outputs
	output reg 						couple_en, 			// enable of coupling

	output reg 						wr_data_in_g_d2, 		// register for input
	output reg 						rd_vld_g, 			// read valid
	output reg 						rd_data_out_g, 		// output for verifying param
	output reg [`ROW_CNT-1:0] 		wr_vld_bus,    	// to local_ctrl_row
	output reg [`ROW_CNT-1:0] 		rd_rdy_bus, 		// to local_ctrl_row
	output reg [`ROW_CNT-1:0] 		p_code_vld_bus,
	output reg 						p_out_vld_g,
	output reg 						p_out_g
);

////////////////////////////////////////////////////////////
// parameters
////////////////////////////////////////////////////////////
localparam S_IDLE = 2'b00;
localparam S_WRITE = 2'b01;
localparam S_READ = 2'b11;
localparam S_DONE = 2'b10;

////////////////////////////////////////////////////////////
// internal signals 
////////////////////////////////////////////////////////////
reg [1:0] ul_cur_state;
reg [1:0] ul_next_state;
reg [1:0] ul_cur_state_d1;

reg dl_cur_state;
reg dl_cur_state_d1;
reg dl_cur_state_d2;
reg dl_next_state;

reg [`COL_CTRL_CNT_BW-1:0] col_id;
reg [`ROW_CNT_BW-1:0] row_id;
reg [`COL_CTRL_CNT_BW-1:0] rd_col_id;
reg [`ROW_CNT_BW-1:0] rd_row_id;
reg [`ROW_CNT_BW-1:0] rd_row_id_d1;
reg [`COL_PHASE_CNT_BW-1:0] phase_col_id;
reg [`ROW_CNT_BW-1:0] phase_row_id;
reg [`ROW_CNT_BW-1:0] phase_row_id_d1;
reg [`ROW_CNT_BW-1:0] phase_row_id_d2;

reg en_g_d1;
reg wr_data_in_g_d1;

reg p_en_d1;
reg p_en_d2;
wire p_en_start;

////////////////////////////////////////////////////////////
// enable signals 
////////////////////////////////////////////////////////////
always @(posedge clk, negedge rstn) begin
	if (!rstn) begin
		en_g_d1 <= 1'b0;
		wr_data_in_g_d1 <= 1'b0;
		wr_data_in_g_d2 <= 1'b0;
	end else begin
		en_g_d1 <= en_g;
		wr_data_in_g_d1 <= wr_data_in_g;
		wr_data_in_g_d2 <= wr_data_in_g_d1;
	end
end

always @(posedge clk, negedge rstn) begin
	if(!rstn) begin
		p_en_d1 <= 1'b0;
		p_en_d2 <= 1'b0;
	end else begin
		p_en_d1 <= p_en;
		p_en_d2 <= p_en_d1;
	end
end

assign p_en_start = ~p_en_d1 & p_en_d2;

////////////////////////////////////////////////////////////
// uplink fsm
////////////////////////////////////////////////////////////
always @(posedge clk, negedge rstn) begin
	if (!rstn)
		ul_cur_state <= S_IDLE;
	else
		ul_cur_state <= ul_next_state;
end

always @(*) begin
	case (ul_cur_state)
		S_IDLE: ul_next_state = en_g_d1 ? S_WRITE : S_IDLE;
		S_WRITE: begin
			if ((col_id == `COL_CTRL_CNT-1) && (row_id == `ROW_CNT-1))
				ul_next_state = S_READ;
			else
				ul_next_state = ul_cur_state;
		end
		S_READ: begin
			if ((col_id == `COL_CTRL_CNT-1) && (row_id == `ROW_CNT-1))
				ul_next_state = S_DONE;
			else
				ul_next_state = ul_cur_state;
		end
		S_DONE: ul_next_state = S_IDLE;
		default: ul_next_state = S_IDLE;
	endcase
end

always @(posedge clk, negedge rstn) begin
	if (!rstn) begin
		col_id <= 'd0;
		row_id <= 'd0;
	end else begin
		case(ul_cur_state) 
			S_WRITE, S_READ: begin
				if (col_id == `COL_CTRL_CNT-1) begin
					col_id <= 'd0;
					row_id <= (row_id == `ROW_CNT-1) ? 'd0 : row_id+1'b1;
				end else
					col_id <= col_id + 1'b1;
			end
			default: begin
				col_id <= 'd0;
				row_id <= 'd0;
			end
		endcase
	end
end

always @(posedge clk, negedge rstn) begin
	if (!rstn) begin
		rd_col_id <= 'd0;
		rd_row_id <= 'd0;
		couple_en <= 1'b0;
	end else if (ul_cur_state == S_READ) begin
		rd_col_id <= col_id;
		rd_row_id <= row_id;
		couple_en <= 1'b1;
	end else begin
		rd_col_id <= 'd0;
		rd_row_id <= 'd0;
	end
end

always @(posedge clk, negedge rstn) begin
	if (!rstn) begin
		ul_cur_state_d1 <= S_IDLE; 
		rd_row_id_d1 <= 'd0;
	end else begin
		ul_cur_state_d1 <= S_READ;
		rd_row_id_d1 <= rd_row_id;
	end
end

always @(posedge clk, negedge rstn) begin
	if (!rstn) begin
		rd_vld_g <= 1'b0;
		rd_data_out_g <= 1'b0;
	end else begin	
		rd_vld_g <= (ul_cur_state_d1 == S_READ) ? rd_vld_bus[rd_row_id_d1] : 1'b0;
		rd_data_out_g <= (ul_cur_state_d1 == S_READ) ? rd_data_out_bus[rd_row_id_d1] : 1'b0;
	end
end

////////////////////////////////////////////////////////////
// downlink fsm
////////////////////////////////////////////////////////////
always @(posedge clk, negedge rstn) begin
	if (!rstn)
		dl_cur_state <= S_IDLE;
	else
		dl_cur_state <= dl_next_state;
end

always @(*) begin
	case (dl_cur_state)
		1'b0 : dl_next_state = p_en_start ? 1'b1 : 1'b0;
		1'b1 : begin
			if ((phase_col_id == `COL_PHASE_CNT-1) && (phase_row_id == `ROW_CNT-1))
				dl_next_state = 1'b0;
			else
				dl_next_state = 1'b1;
		end
	endcase
end

always @(posedge clk, negedge rstn) begin
	if (!rstn) begin
		phase_col_id <= 'd0;
		phase_row_id <= 'd0;
	end else begin
		case(dl_cur_state) 
			1'b1: begin
				if (phase_col_id == `COL_PHASE_CNT-1) begin
					phase_col_id <= 'd0;
					phase_row_id <= (phase_row_id == `ROW_CNT-1) ? 'd0 : phase_row_id+1'b1;
				end else
					phase_col_id <= phase_col_id + 1'b1;
			end
			default: begin
				phase_col_id <= 'd0;
				phase_row_id <= 'd0;
			end
		endcase
	end
end

integer i;

always @(posedge clk, negedge rstn) begin
	if (!rstn)
		p_code_vld_bus <= 'd0; 
	else if (dl_cur_state) begin
		for (i=0;i<`ROW_CNT;i=i+1)
			p_code_vld_bus[i] <= phase_row_id == i ? 1'b1 : 1'b0;
	end else
		p_code_vld_bus <= 'd0; 
end

always @(posedge clk, negedge rstn) begin
	if(!rstn) begin
		dl_cur_state_d1 <= 'd0;
		dl_cur_state_d2 <= 'd0;
		phase_row_id_d1 <= 'd0;
		phase_row_id_d2 <= 'd0;
	end else begin
		dl_cur_state_d1 <= dl_cur_state;
		dl_cur_state_d2 <= dl_cur_state_d1;
		phase_row_id_d1 <= phase_row_id;
		phase_row_id_d2 <= phase_row_id_d1;
	end
end

always @(posedge clk, negedge rstn) begin
	if (!rstn) begin
		p_out_vld_g <= 1'b0;
		p_out_g <= 1'b0;
	end else begin
		p_out_vld_g <= dl_cur_state_d2 ? p_out_vld_bus[phase_row_id_d2] : 1'b0;
		p_out_g <= dl_cur_state_d2 ? p_out_bus[phase_row_id_d2] : 1'b0;
	end
end

////////////////////////////////////////////////////////////
// initialization 
////////////////////////////////////////////////////////////

always @(posedge clk, negedge rstn) begin
	if (!rstn) begin
		for (i=0; i<`ROW_CNT; i=i+1) begin
			wr_vld_bus[i] <= 1'b0;
			rd_rdy_bus[i] <= 1'b0;
		end
	end else begin
		for (i=0; i<`ROW_CNT; i=i+1) begin
			wr_vld_bus[i] <= (ul_cur_state == S_WRITE && row_id == i) ? 1'b1 : 1'b0;
			rd_rdy_bus[i] <= (ul_cur_state == S_READ && row_id == i) ? 1'b1 : 1'b0;
		end
	end
end
	
endmodule
