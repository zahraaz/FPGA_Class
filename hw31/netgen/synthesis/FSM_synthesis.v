////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: FSM_synthesis.v
// /___/   /\     Timestamp: Mon Nov 28 02:18:13 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim FSM.ngc FSM_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: FSM.ngc
// Output file	: C:\Users\Zahraa\Documents\FPGA\hw31\netgen\synthesis\FSM_synthesis.v
// # of Modules	: 1
// Design Name	: FSM
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

module FSM (
  inp, clk, rst, outp
);
  input inp;
  input clk;
  input rst;
  output [1 : 0] outp;
  wire inp_IBUF_0;
  wire clk_BUFGP_1;
  wire rst_IBUF_2;
  wire pr_state_FSM_FFd1_3;
  wire pr_state_FSM_FFd2_4;
  wire \pr_state_FSM_FFd2-In ;
  wire \pr_state_FSM_FFd1-In ;
  FDC #(
    .INIT ( 1'b0 ))
  pr_state_FSM_FFd2 (
    .C(clk_BUFGP_1),
    .CLR(rst_IBUF_2),
    .D(\pr_state_FSM_FFd2-In ),
    .Q(pr_state_FSM_FFd2_4)
  );
  FDC #(
    .INIT ( 1'b0 ))
  pr_state_FSM_FFd1 (
    .C(clk_BUFGP_1),
    .CLR(rst_IBUF_2),
    .D(\pr_state_FSM_FFd1-In ),
    .Q(pr_state_FSM_FFd1_3)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pr_state_FSM_FFd1-In1  (
    .I0(pr_state_FSM_FFd2_4),
    .I1(pr_state_FSM_FFd1_3),
    .O(\pr_state_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \pr_state_FSM_FFd2-In1  (
    .I0(inp_IBUF_0),
    .I1(pr_state_FSM_FFd2_4),
    .I2(pr_state_FSM_FFd1_3),
    .O(\pr_state_FSM_FFd2-In )
  );
  IBUF   inp_IBUF (
    .I(inp),
    .O(inp_IBUF_0)
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_2)
  );
  OBUF   outp_1_OBUF (
    .I(pr_state_FSM_FFd1_3),
    .O(outp[1])
  );
  OBUF   outp_0_OBUF (
    .I(pr_state_FSM_FFd2_4),
    .O(outp[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_1)
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

