////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: digital_counter_synthesis.v
// /___/   /\     Timestamp: Sun Nov 27 17:38:26 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim digital_counter.ngc digital_counter_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: digital_counter.ngc
// Output file	: C:\Users\Zahraa\Documents\FPGA\h13\netgen\synthesis\digital_counter_synthesis.v
// # of Modules	: 1
// Design Name	: digital_counter
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module digital_counter (
  clk, reset, crt, count
);
  input clk;
  input reset;
  input crt;
  output [3 : 0] count;
  wire clk_BUFGP_0;
  wire reset_IBUF_1;
  wire crt_IBUF_2;
  wire present_state_FSM_FFd1_3;
  wire present_state_FSM_FFd2_4;
  wire present_state_FSM_FFd3_5;
  wire present_state_FSM_FFd4_6;
  wire \present_state_FSM_FFd4-In ;
  wire \present_state_FSM_FFd3-In ;
  wire \present_state_FSM_FFd2-In ;
  wire \present_state_FSM_FFd1-In ;
  FDC #(
    .INIT ( 1'b0 ))
  present_state_FSM_FFd4 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\present_state_FSM_FFd4-In ),
    .Q(present_state_FSM_FFd4_6)
  );
  FDC #(
    .INIT ( 1'b0 ))
  present_state_FSM_FFd3 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\present_state_FSM_FFd3-In ),
    .Q(present_state_FSM_FFd3_5)
  );
  FDC #(
    .INIT ( 1'b0 ))
  present_state_FSM_FFd2 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\present_state_FSM_FFd2-In ),
    .Q(present_state_FSM_FFd2_4)
  );
  FDC #(
    .INIT ( 1'b0 ))
  present_state_FSM_FFd1 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\present_state_FSM_FFd1-In ),
    .Q(present_state_FSM_FFd1_3)
  );
  LUT5 #(
    .INIT ( 32'hD580AA01 ))
  \present_state_FSM_FFd1-In1  (
    .I0(crt_IBUF_2),
    .I1(present_state_FSM_FFd2_4),
    .I2(present_state_FSM_FFd3_5),
    .I3(present_state_FSM_FFd1_3),
    .I4(present_state_FSM_FFd4_6),
    .O(\present_state_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'h55A2EE54 ))
  \present_state_FSM_FFd3-In1  (
    .I0(crt_IBUF_2),
    .I1(present_state_FSM_FFd1_3),
    .I2(present_state_FSM_FFd2_4),
    .I3(present_state_FSM_FFd3_5),
    .I4(present_state_FSM_FFd4_6),
    .O(\present_state_FSM_FFd3-In )
  );
  LUT5 #(
    .INIT ( 32'h5FA0FE44 ))
  \present_state_FSM_FFd2-In1  (
    .I0(crt_IBUF_2),
    .I1(present_state_FSM_FFd1_3),
    .I2(present_state_FSM_FFd3_5),
    .I3(present_state_FSM_FFd2_4),
    .I4(present_state_FSM_FFd4_6),
    .O(\present_state_FSM_FFd2-In )
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  IBUF   crt_IBUF (
    .I(crt),
    .O(crt_IBUF_2)
  );
  OBUF   count_3_OBUF (
    .I(present_state_FSM_FFd1_3),
    .O(count[3])
  );
  OBUF   count_2_OBUF (
    .I(present_state_FSM_FFd2_4),
    .O(count[2])
  );
  OBUF   count_1_OBUF (
    .I(present_state_FSM_FFd3_5),
    .O(count[1])
  );
  OBUF   count_0_OBUF (
    .I(present_state_FSM_FFd4_6),
    .O(count[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \present_state_FSM_FFd4-In1_INV_0  (
    .I(present_state_FSM_FFd4_6),
    .O(\present_state_FSM_FFd4-In )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

