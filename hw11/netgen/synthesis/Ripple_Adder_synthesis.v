////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Ripple_Adder_synthesis.v
// /___/   /\     Timestamp: Sun Nov 27 15:35:03 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Ripple_Adder.ngc Ripple_Adder_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: Ripple_Adder.ngc
// Output file	: C:\Users\Zahraa\Documents\FPGA\hw11\netgen\synthesis\Ripple_Adder_synthesis.v
// # of Modules	: 1
// Design Name	: Ripple_Adder
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

module Ripple_Adder (
  Cin, Cout, A, B, S
);
  input Cin;
  output Cout;
  input [3 : 0] A;
  input [3 : 0] B;
  output [3 : 0] S;
  wire A_0_IBUF_0;
  wire A_1_IBUF_1;
  wire A_2_IBUF_2;
  wire A_3_IBUF_3;
  wire B_0_IBUF_4;
  wire B_1_IBUF_5;
  wire B_2_IBUF_6;
  wire B_3_IBUF_7;
  wire Cin_IBUF_8;
  wire S_0_OBUF_9;
  wire S_1_OBUF_10;
  wire c2;
  wire S_2_OBUF_12;
  wire S_3_OBUF_13;
  wire Cout_OBUF_14;
  LUT3 #(
    .INIT ( 8'h96 ))
  \FA3/Mxor_S_xo<0>1  (
    .I0(A_2_IBUF_2),
    .I1(B_2_IBUF_6),
    .I2(c2),
    .O(S_2_OBUF_12)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \FA1/Mxor_S_xo<0>1  (
    .I0(A_0_IBUF_0),
    .I1(B_0_IBUF_4),
    .I2(Cin_IBUF_8),
    .O(S_0_OBUF_9)
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \FA2/Cout1  (
    .I0(A_1_IBUF_1),
    .I1(B_1_IBUF_5),
    .I2(B_0_IBUF_4),
    .I3(Cin_IBUF_8),
    .I4(A_0_IBUF_0),
    .O(c2)
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \FA2/Mxor_S_xo<0>1  (
    .I0(A_1_IBUF_1),
    .I1(B_1_IBUF_5),
    .I2(B_0_IBUF_4),
    .I3(Cin_IBUF_8),
    .I4(A_0_IBUF_0),
    .O(S_1_OBUF_10)
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \FA4/Cout1  (
    .I0(A_3_IBUF_3),
    .I1(B_3_IBUF_7),
    .I2(B_2_IBUF_6),
    .I3(c2),
    .I4(A_2_IBUF_2),
    .O(Cout_OBUF_14)
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \FA4/Mxor_S_xo<0>1  (
    .I0(A_3_IBUF_3),
    .I1(B_3_IBUF_7),
    .I2(B_2_IBUF_6),
    .I3(c2),
    .I4(A_2_IBUF_2),
    .O(S_3_OBUF_13)
  );
  IBUF   A_3_IBUF (
    .I(A[3]),
    .O(A_3_IBUF_3)
  );
  IBUF   A_2_IBUF (
    .I(A[2]),
    .O(A_2_IBUF_2)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_1)
  );
  IBUF   A_0_IBUF (
    .I(A[0]),
    .O(A_0_IBUF_0)
  );
  IBUF   B_3_IBUF (
    .I(B[3]),
    .O(B_3_IBUF_7)
  );
  IBUF   B_2_IBUF (
    .I(B[2]),
    .O(B_2_IBUF_6)
  );
  IBUF   B_1_IBUF (
    .I(B[1]),
    .O(B_1_IBUF_5)
  );
  IBUF   B_0_IBUF (
    .I(B[0]),
    .O(B_0_IBUF_4)
  );
  IBUF   Cin_IBUF (
    .I(Cin),
    .O(Cin_IBUF_8)
  );
  OBUF   S_3_OBUF (
    .I(S_3_OBUF_13),
    .O(S[3])
  );
  OBUF   S_2_OBUF (
    .I(S_2_OBUF_12),
    .O(S[2])
  );
  OBUF   S_1_OBUF (
    .I(S_1_OBUF_10),
    .O(S[1])
  );
  OBUF   S_0_OBUF (
    .I(S_0_OBUF_9),
    .O(S[0])
  );
  OBUF   Cout_OBUF (
    .I(Cout_OBUF_14),
    .O(Cout)
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

