////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: UP_down_counter_synthesis.v
// /___/   /\     Timestamp: Wed Nov 30 09:55:54 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim UP_down_counter.ngc UP_down_counter_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: UP_down_counter.ngc
// Output file	: C:\Users\Zahraa\Documents\FPGA\hw30\netgen\synthesis\UP_down_counter_synthesis.v
// # of Modules	: 1
// Design Name	: UP_down_counter
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

module UP_down_counter (
  CLK, RST, CRT, dp, AN, SEGMENT
);
  input CLK;
  input RST;
  input CRT;
  output dp;
  output [3 : 0] AN;
  output [6 : 0] SEGMENT;
  wire AN_3_OBUF_0;
  wire AN_2_OBUF_1;
  VCC   XST_VCC (
    .P(AN_2_OBUF_1)
  );
  GND   XST_GND (
    .G(AN_3_OBUF_0)
  );
  OBUF   AN_3_OBUF (
    .I(AN_3_OBUF_0),
    .O(AN[3])
  );
  OBUF   AN_2_OBUF (
    .I(AN_2_OBUF_1),
    .O(AN[2])
  );
  OBUF   AN_1_OBUF (
    .I(AN_2_OBUF_1),
    .O(AN[1])
  );
  OBUF   AN_0_OBUF (
    .I(AN_2_OBUF_1),
    .O(AN[0])
  );
  OBUF   SEGMENT_6_OBUF (
    .I(AN_3_OBUF_0),
    .O(SEGMENT[6])
  );
  OBUF   SEGMENT_5_OBUF (
    .I(AN_3_OBUF_0),
    .O(SEGMENT[5])
  );
  OBUF   SEGMENT_4_OBUF (
    .I(AN_3_OBUF_0),
    .O(SEGMENT[4])
  );
  OBUF   SEGMENT_3_OBUF (
    .I(AN_3_OBUF_0),
    .O(SEGMENT[3])
  );
  OBUF   SEGMENT_2_OBUF (
    .I(AN_3_OBUF_0),
    .O(SEGMENT[2])
  );
  OBUF   SEGMENT_1_OBUF (
    .I(AN_3_OBUF_0),
    .O(SEGMENT[1])
  );
  OBUF   SEGMENT_0_OBUF (
    .I(AN_3_OBUF_0),
    .O(SEGMENT[0])
  );
  OBUF   dp_OBUF (
    .I(AN_2_OBUF_1),
    .O(dp)
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

