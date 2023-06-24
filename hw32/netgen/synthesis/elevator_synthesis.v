////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: elevator_synthesis.v
// /___/   /\     Timestamp: Mon Nov 28 13:03:17 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim elevator.ngc elevator_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: elevator.ngc
// Output file	: C:\Users\Zahraa\Documents\FPGA\hw32\netgen\synthesis\elevator_synthesis.v
// # of Modules	: 1
// Design Name	: elevator
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

module elevator (
  clk, reset, stop, up_down, digit1, digit2, floor
);
  input clk;
  input reset;
  input stop;
  input up_down;
  output [6 : 0] digit1;
  output [6 : 0] digit2;
  output [4 : 0] floor;
  wire clk_BUFGP_0;
  wire reset_IBUF_1;
  wire stop_IBUF_2;
  wire up_down_IBUF_3;
  wire floor_2_OBUF_4;
  wire floor_state_FSM_FFd2_5;
  wire floor_0_OBUF_6;
  wire \temp1[3]_GND_3_o_add_53_OUT<2> ;
  wire digit1_6_OBUF_8;
  wire digit1_5_OBUF_9;
  wire digit1_4_OBUF_10;
  wire digit1_3_OBUF_11;
  wire digit1_2_OBUF_12;
  wire digit1_1_OBUF_13;
  wire digit1_0_OBUF_14;
  wire \temp2[3]_GND_3_o_add_55_OUT<2> ;
  wire digit2_6_OBUF_16;
  wire digit2_5_OBUF_17;
  wire digit2_4_OBUF_18;
  wire digit2_3_OBUF_19;
  wire digit2_2_OBUF_20;
  wire digit2_1_OBUF_21;
  wire digit2_0_OBUF_22;
  wire \temp1[3]_GND_3_o_mux_58_OUT<3> ;
  wire \temp1[3]_GND_3_o_mux_58_OUT<1> ;
  wire \temp1[3]_GND_3_o_mux_58_OUT<0> ;
  wire \temp2[3]_GND_3_o_mux_57_OUT<3> ;
  wire \temp2[3]_GND_3_o_mux_57_OUT<1> ;
  wire \PWR_3_o_temp1[3]_equal_55_o ;
  wire floor_3_OBUF_29;
  wire \floor_state_FSM_FFd2-In ;
  wire \floor_state_FSM_FFd1-In ;
  wire floor_state_FSM_FFd1_32;
  wire temp2_0_dpot_64;
  wire [3 : 0] temp1;
  wire [3 : 0] temp2;
  GND   XST_GND (
    .G(floor_3_OBUF_29)
  );
  FDC #(
    .INIT ( 1'b0 ))
  temp1_0 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\temp1[3]_GND_3_o_mux_58_OUT<0> ),
    .Q(temp1[0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  temp1_1 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\temp1[3]_GND_3_o_mux_58_OUT<1> ),
    .Q(temp1[1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  temp1_2 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\temp1[3]_GND_3_o_add_53_OUT<2> ),
    .Q(temp1[2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  temp1_3 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\temp1[3]_GND_3_o_mux_58_OUT<3> ),
    .Q(temp1[3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  temp2_0 (
    .C(clk_BUFGP_0),
    .CE(temp1[0]),
    .CLR(reset_IBUF_1),
    .D(temp2_0_dpot_64),
    .Q(temp2[0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  temp2_1 (
    .C(clk_BUFGP_0),
    .CE(\PWR_3_o_temp1[3]_equal_55_o ),
    .CLR(reset_IBUF_1),
    .D(\temp2[3]_GND_3_o_mux_57_OUT<1> ),
    .Q(temp2[1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  temp2_2 (
    .C(clk_BUFGP_0),
    .CE(\PWR_3_o_temp1[3]_equal_55_o ),
    .CLR(reset_IBUF_1),
    .D(\temp2[3]_GND_3_o_add_55_OUT<2> ),
    .Q(temp2[2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  temp2_3 (
    .C(clk_BUFGP_0),
    .CE(\PWR_3_o_temp1[3]_equal_55_o ),
    .CLR(reset_IBUF_1),
    .D(\temp2[3]_GND_3_o_mux_57_OUT<3> ),
    .Q(temp2[3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  floor_state_FSM_FFd1 (
    .C(clk_BUFGP_0),
    .D(\floor_state_FSM_FFd1-In ),
    .R(reset_IBUF_1),
    .Q(floor_state_FSM_FFd1_32)
  );
  FDR #(
    .INIT ( 1'b0 ))
  floor_state_FSM_FFd2 (
    .C(clk_BUFGP_0),
    .D(\floor_state_FSM_FFd2-In ),
    .R(reset_IBUF_1),
    .Q(floor_state_FSM_FFd2_5)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \floor_state_floor<0>1  (
    .I0(floor_state_FSM_FFd2_5),
    .I1(floor_state_FSM_FFd1_32),
    .O(floor_0_OBUF_6)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \floor_state_floor<2>1  (
    .I0(floor_state_FSM_FFd2_5),
    .I1(floor_state_FSM_FFd1_32),
    .O(floor_2_OBUF_4)
  );
  LUT4 #(
    .INIT ( 16'hFEBA ))
  Mram_digit121 (
    .I0(temp1[0]),
    .I1(temp1[1]),
    .I2(temp1[2]),
    .I3(temp1[3]),
    .O(digit1_2_OBUF_12)
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  Mram_digit161 (
    .I0(temp1[0]),
    .I1(temp1[1]),
    .I2(temp1[2]),
    .I3(temp1[3]),
    .O(digit1_6_OBUF_8)
  );
  LUT4 #(
    .INIT ( 16'hFFBA ))
  Mram_digit221 (
    .I0(temp2[3]),
    .I1(temp2[1]),
    .I2(temp2[2]),
    .I3(temp2[0]),
    .O(digit2_2_OBUF_20)
  );
  LUT4 #(
    .INIT ( 16'h4054 ))
  Mram_digit1111 (
    .I0(temp1[3]),
    .I1(temp1[0]),
    .I2(temp1[1]),
    .I3(temp1[2]),
    .O(digit1_1_OBUF_13)
  );
  LUT4 #(
    .INIT ( 16'h4101 ))
  Mram_digit111 (
    .I0(temp1[3]),
    .I1(temp1[1]),
    .I2(temp1[2]),
    .I3(temp1[0]),
    .O(digit1_0_OBUF_14)
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \floor_state_FSM_FFd2-In1  (
    .I0(stop_IBUF_2),
    .I1(floor_state_FSM_FFd1_32),
    .I2(up_down_IBUF_3),
    .I3(floor_state_FSM_FFd2_5),
    .O(\floor_state_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'hBA8A ))
  \floor_state_FSM_FFd1-In1  (
    .I0(floor_state_FSM_FFd1_32),
    .I1(stop_IBUF_2),
    .I2(floor_state_FSM_FFd2_5),
    .I3(up_down_IBUF_3),
    .O(\floor_state_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'h0190 ))
  Mram_digit261 (
    .I0(temp2[0]),
    .I1(temp2[1]),
    .I2(temp2[2]),
    .I3(temp2[3]),
    .O(digit2_6_OBUF_16)
  );
  LUT4 #(
    .INIT ( 16'h2224 ))
  Mram_digit251 (
    .I0(temp2[2]),
    .I1(temp2[3]),
    .I2(temp2[1]),
    .I3(temp2[0]),
    .O(digit2_5_OBUF_17)
  );
  LUT4 #(
    .INIT ( 16'h4104 ))
  Mram_digit131 (
    .I0(temp1[3]),
    .I1(temp1[0]),
    .I2(temp1[1]),
    .I3(temp1[2]),
    .O(digit1_3_OBUF_11)
  );
  LUT4 #(
    .INIT ( 16'h0194 ))
  Mram_digit231 (
    .I0(temp2[1]),
    .I1(temp2[0]),
    .I2(temp2[2]),
    .I3(temp2[3]),
    .O(digit2_3_OBUF_19)
  );
  LUT4 #(
    .INIT ( 16'h0194 ))
  Mram_digit241 (
    .I0(temp2[2]),
    .I1(temp2[1]),
    .I2(temp2[0]),
    .I3(temp2[3]),
    .O(digit2_4_OBUF_18)
  );
  LUT4 #(
    .INIT ( 16'h4506 ))
  Mram_digit2111 (
    .I0(temp2[3]),
    .I1(temp2[0]),
    .I2(temp2[2]),
    .I3(temp2[1]),
    .O(digit2_1_OBUF_21)
  );
  LUT4 #(
    .INIT ( 16'h0191 ))
  Mram_digit211 (
    .I0(temp2[1]),
    .I1(temp2[2]),
    .I2(temp2[0]),
    .I3(temp2[3]),
    .O(digit2_0_OBUF_22)
  );
  LUT4 #(
    .INIT ( 16'h0110 ))
  Mram_digit141 (
    .I0(temp1[2]),
    .I1(temp1[3]),
    .I2(temp1[0]),
    .I3(temp1[1]),
    .O(digit1_4_OBUF_10)
  );
  LUT4 #(
    .INIT ( 16'h0220 ))
  Mram_digit151 (
    .I0(temp1[2]),
    .I1(temp1[3]),
    .I2(temp1[0]),
    .I3(temp1[1]),
    .O(digit1_5_OBUF_9)
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Madd_temp1[3]_GND_3_o_add_53_OUT_xor<2>11  (
    .I0(temp1[2]),
    .I1(temp1[0]),
    .I2(temp1[1]),
    .O(\temp1[3]_GND_3_o_add_53_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \PWR_3_o_temp1[3]_equal_55_o<3>1  (
    .I0(temp1[0]),
    .I1(temp1[1]),
    .I2(temp1[2]),
    .I3(temp1[3]),
    .O(\PWR_3_o_temp1[3]_equal_55_o )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Madd_temp2[3]_GND_3_o_add_55_OUT_xor<2>11  (
    .I0(temp2[2]),
    .I1(temp2[0]),
    .I2(temp2[1]),
    .O(\temp2[3]_GND_3_o_add_55_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'h6466 ))
  \Mmux_temp2[3]_GND_3_o_mux_57_OUT21  (
    .I0(temp2[0]),
    .I1(temp2[1]),
    .I2(temp2[2]),
    .I3(temp2[3]),
    .O(\temp2[3]_GND_3_o_mux_57_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h6AA2 ))
  \Mmux_temp2[3]_GND_3_o_mux_57_OUT41  (
    .I0(temp2[3]),
    .I1(temp2[0]),
    .I2(temp2[1]),
    .I3(temp2[2]),
    .O(\temp2[3]_GND_3_o_mux_57_OUT<3> )
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  IBUF   stop_IBUF (
    .I(stop),
    .O(stop_IBUF_2)
  );
  IBUF   up_down_IBUF (
    .I(up_down),
    .O(up_down_IBUF_3)
  );
  OBUF   digit1_6_OBUF (
    .I(digit1_6_OBUF_8),
    .O(digit1[6])
  );
  OBUF   digit1_5_OBUF (
    .I(digit1_5_OBUF_9),
    .O(digit1[5])
  );
  OBUF   digit1_4_OBUF (
    .I(digit1_4_OBUF_10),
    .O(digit1[4])
  );
  OBUF   digit1_3_OBUF (
    .I(digit1_3_OBUF_11),
    .O(digit1[3])
  );
  OBUF   digit1_2_OBUF (
    .I(digit1_2_OBUF_12),
    .O(digit1[2])
  );
  OBUF   digit1_1_OBUF (
    .I(digit1_1_OBUF_13),
    .O(digit1[1])
  );
  OBUF   digit1_0_OBUF (
    .I(digit1_0_OBUF_14),
    .O(digit1[0])
  );
  OBUF   digit2_6_OBUF (
    .I(digit2_6_OBUF_16),
    .O(digit2[6])
  );
  OBUF   digit2_5_OBUF (
    .I(digit2_5_OBUF_17),
    .O(digit2[5])
  );
  OBUF   digit2_4_OBUF (
    .I(digit2_4_OBUF_18),
    .O(digit2[4])
  );
  OBUF   digit2_3_OBUF (
    .I(digit2_3_OBUF_19),
    .O(digit2[3])
  );
  OBUF   digit2_2_OBUF (
    .I(digit2_2_OBUF_20),
    .O(digit2[2])
  );
  OBUF   digit2_1_OBUF (
    .I(digit2_1_OBUF_21),
    .O(digit2[1])
  );
  OBUF   digit2_0_OBUF (
    .I(digit2_0_OBUF_22),
    .O(digit2[0])
  );
  OBUF   floor_4_OBUF (
    .I(floor_3_OBUF_29),
    .O(floor[4])
  );
  OBUF   floor_3_OBUF (
    .I(floor_3_OBUF_29),
    .O(floor[3])
  );
  OBUF   floor_2_OBUF (
    .I(floor_2_OBUF_4),
    .O(floor[2])
  );
  OBUF   floor_1_OBUF (
    .I(floor_state_FSM_FFd2_5),
    .O(floor[1])
  );
  OBUF   floor_0_OBUF (
    .I(floor_0_OBUF_6),
    .O(floor[0])
  );
  LUT4 #(
    .INIT ( 16'hAAA6 ))
  temp2_0_dpot (
    .I0(temp2[0]),
    .I1(temp1[3]),
    .I2(temp1[2]),
    .I3(temp1[1]),
    .O(temp2_0_dpot_64)
  );
  LUT4 #(
    .INIT ( 16'h6AA2 ))
  \Mmux_temp1[3]_GND_3_o_mux_58_OUT41  (
    .I0(temp1[3]),
    .I1(temp1[0]),
    .I2(temp1[1]),
    .I3(temp1[2]),
    .O(\temp1[3]_GND_3_o_mux_58_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'h6466 ))
  \Mmux_temp1[3]_GND_3_o_mux_58_OUT21  (
    .I0(temp1[0]),
    .I1(temp1[1]),
    .I2(temp1[2]),
    .I3(temp1[3]),
    .O(\temp1[3]_GND_3_o_mux_58_OUT<1> )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \Mmux_temp1[3]_GND_3_o_mux_58_OUT11_INV_0  (
    .I(temp1[0]),
    .O(\temp1[3]_GND_3_o_mux_58_OUT<0> )
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

