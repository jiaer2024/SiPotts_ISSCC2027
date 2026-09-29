////////////////////////////////////////////////////////////////////////////////
//// Designer: Huang Yingna
//// Create Date: 12/3/2026 14:50 
//// Project Name: MBPM 
//// Module Name: local_ctrl 
//// Target Technology: TSMC 40nm 
//// Description: Define 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

////////////////////////////////////////////////////////////
// CTRL_CNT: number of control signals
// CTRL_CNT_BW: bitwidth of CTRL_CNT 
////////////////////////////////////////////////////////////

`define CTRL_CNT 42 
`define CTRL_CNT_BW $clog2(`CTRL_CNT)

`define COL_CNT 45 // row in layout 
`define COL_CNT_BW $clog2(`COL_CNT)

`define COL_CTRL_CNT `CTRL_CNT*`COL_CNT
`define COL_CTRL_CNT_BW $clog2(`COL_CTRL_CNT)

`define ROW_CNT 8 // col in layout
`define ROW_CNT_BW $clog2(`ROW_CNT)

`define UC_CNT `ROW_CNT*`COL_CNT
`define UC_CNT_BW $clog2(`UC_CNT)

`define TOTAL_CNT `ROW_CNT*`COL_CTRL_CNT
`define TOTAL_CNT_BW $clog2(`TOTAL_CNT)

`define COL_PHASE_CNT (`COL_CNT*2)
`define COL_PHASE_CNT_BW $clog2(`COL_PHASE_CNT)
