////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: TLC_synthesis.v
// /___/   /\     Timestamp: Wed Dec 14 08:47:28 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim TCL_TOP_MODULE.ngc TLC_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: TCL_TOP_MODULE.ngc
// Output file	: C:\Users\Zahraa\Documents\FPGA\fourthExp\netgen\synthesis\TLC_synthesis.v
// # of Modules	: 1
// Design Name	: TCL_TOP_MODULE
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

module TCL_TOP_MODULE (
  CLK, TEST, STDY, R1Y1G1, R2Y2G2
);
  input CLK;
  input TEST;
  input STDY;
  output [2 : 0] R1Y1G1;
  output [2 : 0] R2Y2G2;
  wire CLK_BUFGP_0;
  wire TEST_IBUF_1;
  wire STDY_IBUF_2;
  wire \U1/flipping_3 ;
  wire R1Y1G1_2_OBUF_4;
  wire R1Y1G1_1_OBUF_5;
  wire R1Y1G1_0_OBUF_6;
  wire R2Y2G2_2_OBUF_7;
  wire R2Y2G2_1_OBUF_8;
  wire R2Y2G2_0_OBUF_9;
  wire N0;
  wire N1;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<10>_137 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<9>_138 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<8>_139 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<7>_140 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<6>_141 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<5>_142 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<4>_143 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<3>_144 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<2>_145 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<1>_146 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<0>_147 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_lut<0> ;
  wire \U2/Mram__n01018 ;
  wire \U2/Mram__n01017 ;
  wire \U2/Mram__n01016 ;
  wire \U2/count_2_152 ;
  wire \U2/count_3_153 ;
  wire \U2/nx_state_0_154 ;
  wire \U2/nx_state_1_155 ;
  wire \U2/count_4_156 ;
  wire \U2/pr_state[2]_X_7_o_Mux_38_o ;
  wire \U2/count_5_158 ;
  wire \U2/timer[11]_GND_7_o_mux_3_OUT<2> ;
  wire \U2/timer[11]_GND_7_o_mux_3_OUT<3> ;
  wire \U2/timer[11]_GND_7_o_mux_3_OUT<4> ;
  wire \U2/timer[11]_GND_7_o_mux_3_OUT<5> ;
  wire \U2/timer[11]_GND_7_o_mux_3_OUT<7> ;
  wire \U2/timer[11]_GND_7_o_mux_3_OUT<8> ;
  wire \U2/timer[11]_GND_7_o_mux_3_OUT<9> ;
  wire \U2/timer[11]_GND_7_o_mux_3_OUT<10> ;
  wire \U2/timer[11]_GND_7_o_mux_3_OUT<11> ;
  wire \U2/count_10_168 ;
  wire \U2/count_7_169 ;
  wire \U2/count_8_170 ;
  wire \U2/count_9_171 ;
  wire \U2/pr_state[2]_X_7_o_Mux_32_o ;
  wire \U2/timer[11]_GND_7_o_add_0_OUT<0> ;
  wire \U2/timer[11]_GND_7_o_add_0_OUT<1> ;
  wire \U2/timer[11]_GND_7_o_add_0_OUT<2> ;
  wire \U2/timer[11]_GND_7_o_add_0_OUT<3> ;
  wire \U2/timer[11]_GND_7_o_add_0_OUT<4> ;
  wire \U2/timer[11]_GND_7_o_add_0_OUT<5> ;
  wire \U2/timer[11]_GND_7_o_add_0_OUT<6> ;
  wire \U2/timer[11]_GND_7_o_add_0_OUT<7> ;
  wire \U2/timer[11]_GND_7_o_add_0_OUT<8> ;
  wire \U2/timer[11]_GND_7_o_add_0_OUT<9> ;
  wire \U2/timer[11]_GND_7_o_add_0_OUT<10> ;
  wire \U2/timer[11]_GND_7_o_add_0_OUT<11> ;
  wire \U2/pr_state[2]_X_7_o_Mux_22_o ;
  wire \U2/pr_state[2]_X_7_o_Mux_28_o ;
  wire \U2/pr_state[2]_X_7_o_Mux_26_o ;
  wire \U2/pr_state[2]_X_7_o_Mux_24_o ;
  wire \U1/_n0029<0>2 ;
  wire \U2/count[11]_timer[11]_equal_2_o122 ;
  wire \U2/count[11]_timer[11]_equal_2_o123_207 ;
  wire \U1/Mcount_DIV.div_cy<1>_rt_217 ;
  wire \U1/Mcount_DIV.div_cy<2>_rt_218 ;
  wire \U1/Mcount_DIV.div_cy<3>_rt_219 ;
  wire \U1/Mcount_DIV.div_cy<4>_rt_220 ;
  wire \U1/Mcount_DIV.div_cy<5>_rt_221 ;
  wire \U1/Mcount_DIV.div_cy<6>_rt_222 ;
  wire \U1/Mcount_DIV.div_cy<7>_rt_223 ;
  wire \U1/Mcount_DIV.div_cy<8>_rt_224 ;
  wire \U1/Mcount_DIV.div_cy<9>_rt_225 ;
  wire \U1/Mcount_DIV.div_cy<10>_rt_226 ;
  wire \U1/Mcount_DIV.div_cy<11>_rt_227 ;
  wire \U1/Mcount_DIV.div_cy<12>_rt_228 ;
  wire \U1/Mcount_DIV.div_cy<13>_rt_229 ;
  wire \U1/Mcount_DIV.div_cy<14>_rt_230 ;
  wire \U1/Mcount_DIV.div_cy<15>_rt_231 ;
  wire \U1/Mcount_DIV.div_cy<16>_rt_232 ;
  wire \U1/Mcount_DIV.div_cy<17>_rt_233 ;
  wire \U1/Mcount_DIV.div_cy<18>_rt_234 ;
  wire \U1/Mcount_DIV.div_cy<19>_rt_235 ;
  wire \U1/Mcount_DIV.div_cy<20>_rt_236 ;
  wire \U1/Mcount_DIV.div_cy<21>_rt_237 ;
  wire \U1/Mcount_DIV.div_cy<22>_rt_238 ;
  wire \U1/Mcount_DIV.div_cy<23>_rt_239 ;
  wire \U1/Madd__n0012_cy<1>_rt_240 ;
  wire \U1/Madd__n0012_cy<2>_rt_241 ;
  wire \U1/Madd__n0012_cy<3>_rt_242 ;
  wire \U1/Madd__n0012_cy<4>_rt_243 ;
  wire \U1/Madd__n0012_cy<5>_rt_244 ;
  wire \U1/Madd__n0012_cy<6>_rt_245 ;
  wire \U1/Madd__n0012_cy<7>_rt_246 ;
  wire \U1/Madd__n0012_cy<8>_rt_247 ;
  wire \U1/Madd__n0012_cy<9>_rt_248 ;
  wire \U1/Madd__n0012_cy<10>_rt_249 ;
  wire \U1/Madd__n0012_cy<11>_rt_250 ;
  wire \U1/Madd__n0012_cy<12>_rt_251 ;
  wire \U1/Madd__n0012_cy<13>_rt_252 ;
  wire \U1/Madd__n0012_cy<14>_rt_253 ;
  wire \U1/Madd__n0012_cy<15>_rt_254 ;
  wire \U1/Madd__n0012_cy<16>_rt_255 ;
  wire \U1/Madd__n0012_cy<17>_rt_256 ;
  wire \U1/Madd__n0012_cy<18>_rt_257 ;
  wire \U1/Madd__n0012_cy<19>_rt_258 ;
  wire \U1/Madd__n0012_cy<20>_rt_259 ;
  wire \U1/Madd__n0012_cy<21>_rt_260 ;
  wire \U1/Madd__n0012_cy<22>_rt_261 ;
  wire \U1/Madd__n0012_cy<23>_rt_262 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<10>_rt_263 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<9>_rt_264 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<8>_rt_265 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<7>_rt_266 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<6>_rt_267 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<5>_rt_268 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<4>_rt_269 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<3>_rt_270 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<2>_rt_271 ;
  wire \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<1>_rt_272 ;
  wire \U1/Mcount_DIV.div_xor<24>_rt_273 ;
  wire \U1/Madd__n0012_xor<24>_rt_274 ;
  wire N4;
  wire N6;
  wire \U1/flipping_rstpot_277 ;
  wire N10;
  wire N12;
  wire \U2/count[11]_timer[11]_equal_2_o125_rstpot_280 ;
  wire \U2/pr_state_0_dpot_281 ;
  wire \U2/pr_state_1_dpot_282 ;
  wire \U2/pr_state_2_dpot_283 ;
  wire [24 : 0] \U1/_n0012 ;
  wire [24 : 0] \U1/DIV.div ;
  wire [24 : 0] Result;
  wire [0 : 0] \U1/Mcount_DIV.div_lut ;
  wire [23 : 0] \U1/Mcount_DIV.div_cy ;
  wire [0 : 0] \U1/Madd__n0012_lut ;
  wire [23 : 0] \U1/Madd__n0012_cy ;
  wire [2 : 0] \U2/pr_state ;
  wire [11 : 0] \U2/timer ;
  wire [0 : 0] \U1/_n0029 ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FD   \U1/DIV.div_0  (
    .C(CLK_BUFGP_0),
    .D(Result[0]),
    .Q(\U1/DIV.div [0])
  );
  FD   \U1/DIV.div_1  (
    .C(CLK_BUFGP_0),
    .D(Result[1]),
    .Q(\U1/DIV.div [1])
  );
  FD   \U1/DIV.div_2  (
    .C(CLK_BUFGP_0),
    .D(Result[2]),
    .Q(\U1/DIV.div [2])
  );
  FD   \U1/DIV.div_3  (
    .C(CLK_BUFGP_0),
    .D(Result[3]),
    .Q(\U1/DIV.div [3])
  );
  FD   \U1/DIV.div_4  (
    .C(CLK_BUFGP_0),
    .D(Result[4]),
    .Q(\U1/DIV.div [4])
  );
  FD   \U1/DIV.div_5  (
    .C(CLK_BUFGP_0),
    .D(Result[5]),
    .Q(\U1/DIV.div [5])
  );
  FD   \U1/DIV.div_6  (
    .C(CLK_BUFGP_0),
    .D(Result[6]),
    .Q(\U1/DIV.div [6])
  );
  FD   \U1/DIV.div_7  (
    .C(CLK_BUFGP_0),
    .D(Result[7]),
    .Q(\U1/DIV.div [7])
  );
  FD   \U1/DIV.div_8  (
    .C(CLK_BUFGP_0),
    .D(Result[8]),
    .Q(\U1/DIV.div [8])
  );
  FD   \U1/DIV.div_9  (
    .C(CLK_BUFGP_0),
    .D(Result[9]),
    .Q(\U1/DIV.div [9])
  );
  FD   \U1/DIV.div_10  (
    .C(CLK_BUFGP_0),
    .D(Result[10]),
    .Q(\U1/DIV.div [10])
  );
  FD   \U1/DIV.div_11  (
    .C(CLK_BUFGP_0),
    .D(Result[11]),
    .Q(\U1/DIV.div [11])
  );
  FD   \U1/DIV.div_12  (
    .C(CLK_BUFGP_0),
    .D(Result[12]),
    .Q(\U1/DIV.div [12])
  );
  FD   \U1/DIV.div_13  (
    .C(CLK_BUFGP_0),
    .D(Result[13]),
    .Q(\U1/DIV.div [13])
  );
  FD   \U1/DIV.div_14  (
    .C(CLK_BUFGP_0),
    .D(Result[14]),
    .Q(\U1/DIV.div [14])
  );
  FD   \U1/DIV.div_15  (
    .C(CLK_BUFGP_0),
    .D(Result[15]),
    .Q(\U1/DIV.div [15])
  );
  FD   \U1/DIV.div_16  (
    .C(CLK_BUFGP_0),
    .D(Result[16]),
    .Q(\U1/DIV.div [16])
  );
  FD   \U1/DIV.div_17  (
    .C(CLK_BUFGP_0),
    .D(Result[17]),
    .Q(\U1/DIV.div [17])
  );
  FD   \U1/DIV.div_18  (
    .C(CLK_BUFGP_0),
    .D(Result[18]),
    .Q(\U1/DIV.div [18])
  );
  FD   \U1/DIV.div_19  (
    .C(CLK_BUFGP_0),
    .D(Result[19]),
    .Q(\U1/DIV.div [19])
  );
  FD   \U1/DIV.div_20  (
    .C(CLK_BUFGP_0),
    .D(Result[20]),
    .Q(\U1/DIV.div [20])
  );
  FD   \U1/DIV.div_21  (
    .C(CLK_BUFGP_0),
    .D(Result[21]),
    .Q(\U1/DIV.div [21])
  );
  FD   \U1/DIV.div_22  (
    .C(CLK_BUFGP_0),
    .D(Result[22]),
    .Q(\U1/DIV.div [22])
  );
  FD   \U1/DIV.div_23  (
    .C(CLK_BUFGP_0),
    .D(Result[23]),
    .Q(\U1/DIV.div [23])
  );
  FD   \U1/DIV.div_24  (
    .C(CLK_BUFGP_0),
    .D(Result[24]),
    .Q(\U1/DIV.div [24])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\U1/Mcount_DIV.div_lut [0]),
    .O(\U1/Mcount_DIV.div_cy [0])
  );
  XORCY   \U1/Mcount_DIV.div_xor<0>  (
    .CI(N0),
    .LI(\U1/Mcount_DIV.div_lut [0]),
    .O(Result[0])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<1>  (
    .CI(\U1/Mcount_DIV.div_cy [0]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<1>_rt_217 ),
    .O(\U1/Mcount_DIV.div_cy [1])
  );
  XORCY   \U1/Mcount_DIV.div_xor<1>  (
    .CI(\U1/Mcount_DIV.div_cy [0]),
    .LI(\U1/Mcount_DIV.div_cy<1>_rt_217 ),
    .O(Result[1])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<2>  (
    .CI(\U1/Mcount_DIV.div_cy [1]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<2>_rt_218 ),
    .O(\U1/Mcount_DIV.div_cy [2])
  );
  XORCY   \U1/Mcount_DIV.div_xor<2>  (
    .CI(\U1/Mcount_DIV.div_cy [1]),
    .LI(\U1/Mcount_DIV.div_cy<2>_rt_218 ),
    .O(Result[2])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<3>  (
    .CI(\U1/Mcount_DIV.div_cy [2]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<3>_rt_219 ),
    .O(\U1/Mcount_DIV.div_cy [3])
  );
  XORCY   \U1/Mcount_DIV.div_xor<3>  (
    .CI(\U1/Mcount_DIV.div_cy [2]),
    .LI(\U1/Mcount_DIV.div_cy<3>_rt_219 ),
    .O(Result[3])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<4>  (
    .CI(\U1/Mcount_DIV.div_cy [3]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<4>_rt_220 ),
    .O(\U1/Mcount_DIV.div_cy [4])
  );
  XORCY   \U1/Mcount_DIV.div_xor<4>  (
    .CI(\U1/Mcount_DIV.div_cy [3]),
    .LI(\U1/Mcount_DIV.div_cy<4>_rt_220 ),
    .O(Result[4])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<5>  (
    .CI(\U1/Mcount_DIV.div_cy [4]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<5>_rt_221 ),
    .O(\U1/Mcount_DIV.div_cy [5])
  );
  XORCY   \U1/Mcount_DIV.div_xor<5>  (
    .CI(\U1/Mcount_DIV.div_cy [4]),
    .LI(\U1/Mcount_DIV.div_cy<5>_rt_221 ),
    .O(Result[5])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<6>  (
    .CI(\U1/Mcount_DIV.div_cy [5]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<6>_rt_222 ),
    .O(\U1/Mcount_DIV.div_cy [6])
  );
  XORCY   \U1/Mcount_DIV.div_xor<6>  (
    .CI(\U1/Mcount_DIV.div_cy [5]),
    .LI(\U1/Mcount_DIV.div_cy<6>_rt_222 ),
    .O(Result[6])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<7>  (
    .CI(\U1/Mcount_DIV.div_cy [6]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<7>_rt_223 ),
    .O(\U1/Mcount_DIV.div_cy [7])
  );
  XORCY   \U1/Mcount_DIV.div_xor<7>  (
    .CI(\U1/Mcount_DIV.div_cy [6]),
    .LI(\U1/Mcount_DIV.div_cy<7>_rt_223 ),
    .O(Result[7])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<8>  (
    .CI(\U1/Mcount_DIV.div_cy [7]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<8>_rt_224 ),
    .O(\U1/Mcount_DIV.div_cy [8])
  );
  XORCY   \U1/Mcount_DIV.div_xor<8>  (
    .CI(\U1/Mcount_DIV.div_cy [7]),
    .LI(\U1/Mcount_DIV.div_cy<8>_rt_224 ),
    .O(Result[8])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<9>  (
    .CI(\U1/Mcount_DIV.div_cy [8]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<9>_rt_225 ),
    .O(\U1/Mcount_DIV.div_cy [9])
  );
  XORCY   \U1/Mcount_DIV.div_xor<9>  (
    .CI(\U1/Mcount_DIV.div_cy [8]),
    .LI(\U1/Mcount_DIV.div_cy<9>_rt_225 ),
    .O(Result[9])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<10>  (
    .CI(\U1/Mcount_DIV.div_cy [9]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<10>_rt_226 ),
    .O(\U1/Mcount_DIV.div_cy [10])
  );
  XORCY   \U1/Mcount_DIV.div_xor<10>  (
    .CI(\U1/Mcount_DIV.div_cy [9]),
    .LI(\U1/Mcount_DIV.div_cy<10>_rt_226 ),
    .O(Result[10])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<11>  (
    .CI(\U1/Mcount_DIV.div_cy [10]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<11>_rt_227 ),
    .O(\U1/Mcount_DIV.div_cy [11])
  );
  XORCY   \U1/Mcount_DIV.div_xor<11>  (
    .CI(\U1/Mcount_DIV.div_cy [10]),
    .LI(\U1/Mcount_DIV.div_cy<11>_rt_227 ),
    .O(Result[11])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<12>  (
    .CI(\U1/Mcount_DIV.div_cy [11]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<12>_rt_228 ),
    .O(\U1/Mcount_DIV.div_cy [12])
  );
  XORCY   \U1/Mcount_DIV.div_xor<12>  (
    .CI(\U1/Mcount_DIV.div_cy [11]),
    .LI(\U1/Mcount_DIV.div_cy<12>_rt_228 ),
    .O(Result[12])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<13>  (
    .CI(\U1/Mcount_DIV.div_cy [12]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<13>_rt_229 ),
    .O(\U1/Mcount_DIV.div_cy [13])
  );
  XORCY   \U1/Mcount_DIV.div_xor<13>  (
    .CI(\U1/Mcount_DIV.div_cy [12]),
    .LI(\U1/Mcount_DIV.div_cy<13>_rt_229 ),
    .O(Result[13])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<14>  (
    .CI(\U1/Mcount_DIV.div_cy [13]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<14>_rt_230 ),
    .O(\U1/Mcount_DIV.div_cy [14])
  );
  XORCY   \U1/Mcount_DIV.div_xor<14>  (
    .CI(\U1/Mcount_DIV.div_cy [13]),
    .LI(\U1/Mcount_DIV.div_cy<14>_rt_230 ),
    .O(Result[14])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<15>  (
    .CI(\U1/Mcount_DIV.div_cy [14]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<15>_rt_231 ),
    .O(\U1/Mcount_DIV.div_cy [15])
  );
  XORCY   \U1/Mcount_DIV.div_xor<15>  (
    .CI(\U1/Mcount_DIV.div_cy [14]),
    .LI(\U1/Mcount_DIV.div_cy<15>_rt_231 ),
    .O(Result[15])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<16>  (
    .CI(\U1/Mcount_DIV.div_cy [15]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<16>_rt_232 ),
    .O(\U1/Mcount_DIV.div_cy [16])
  );
  XORCY   \U1/Mcount_DIV.div_xor<16>  (
    .CI(\U1/Mcount_DIV.div_cy [15]),
    .LI(\U1/Mcount_DIV.div_cy<16>_rt_232 ),
    .O(Result[16])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<17>  (
    .CI(\U1/Mcount_DIV.div_cy [16]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<17>_rt_233 ),
    .O(\U1/Mcount_DIV.div_cy [17])
  );
  XORCY   \U1/Mcount_DIV.div_xor<17>  (
    .CI(\U1/Mcount_DIV.div_cy [16]),
    .LI(\U1/Mcount_DIV.div_cy<17>_rt_233 ),
    .O(Result[17])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<18>  (
    .CI(\U1/Mcount_DIV.div_cy [17]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<18>_rt_234 ),
    .O(\U1/Mcount_DIV.div_cy [18])
  );
  XORCY   \U1/Mcount_DIV.div_xor<18>  (
    .CI(\U1/Mcount_DIV.div_cy [17]),
    .LI(\U1/Mcount_DIV.div_cy<18>_rt_234 ),
    .O(Result[18])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<19>  (
    .CI(\U1/Mcount_DIV.div_cy [18]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<19>_rt_235 ),
    .O(\U1/Mcount_DIV.div_cy [19])
  );
  XORCY   \U1/Mcount_DIV.div_xor<19>  (
    .CI(\U1/Mcount_DIV.div_cy [18]),
    .LI(\U1/Mcount_DIV.div_cy<19>_rt_235 ),
    .O(Result[19])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<20>  (
    .CI(\U1/Mcount_DIV.div_cy [19]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<20>_rt_236 ),
    .O(\U1/Mcount_DIV.div_cy [20])
  );
  XORCY   \U1/Mcount_DIV.div_xor<20>  (
    .CI(\U1/Mcount_DIV.div_cy [19]),
    .LI(\U1/Mcount_DIV.div_cy<20>_rt_236 ),
    .O(Result[20])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<21>  (
    .CI(\U1/Mcount_DIV.div_cy [20]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<21>_rt_237 ),
    .O(\U1/Mcount_DIV.div_cy [21])
  );
  XORCY   \U1/Mcount_DIV.div_xor<21>  (
    .CI(\U1/Mcount_DIV.div_cy [20]),
    .LI(\U1/Mcount_DIV.div_cy<21>_rt_237 ),
    .O(Result[21])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<22>  (
    .CI(\U1/Mcount_DIV.div_cy [21]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<22>_rt_238 ),
    .O(\U1/Mcount_DIV.div_cy [22])
  );
  XORCY   \U1/Mcount_DIV.div_xor<22>  (
    .CI(\U1/Mcount_DIV.div_cy [21]),
    .LI(\U1/Mcount_DIV.div_cy<22>_rt_238 ),
    .O(Result[22])
  );
  MUXCY   \U1/Mcount_DIV.div_cy<23>  (
    .CI(\U1/Mcount_DIV.div_cy [22]),
    .DI(N0),
    .S(\U1/Mcount_DIV.div_cy<23>_rt_239 ),
    .O(\U1/Mcount_DIV.div_cy [23])
  );
  XORCY   \U1/Mcount_DIV.div_xor<23>  (
    .CI(\U1/Mcount_DIV.div_cy [22]),
    .LI(\U1/Mcount_DIV.div_cy<23>_rt_239 ),
    .O(Result[23])
  );
  XORCY   \U1/Mcount_DIV.div_xor<24>  (
    .CI(\U1/Mcount_DIV.div_cy [23]),
    .LI(\U1/Mcount_DIV.div_xor<24>_rt_273 ),
    .O(Result[24])
  );
  MUXCY   \U1/Madd__n0012_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\U1/Madd__n0012_lut [0]),
    .O(\U1/Madd__n0012_cy [0])
  );
  XORCY   \U1/Madd__n0012_xor<0>  (
    .CI(N0),
    .LI(\U1/Madd__n0012_lut [0]),
    .O(\U1/_n0012 [24])
  );
  MUXCY   \U1/Madd__n0012_cy<1>  (
    .CI(\U1/Madd__n0012_cy [0]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<1>_rt_240 ),
    .O(\U1/Madd__n0012_cy [1])
  );
  XORCY   \U1/Madd__n0012_xor<1>  (
    .CI(\U1/Madd__n0012_cy [0]),
    .LI(\U1/Madd__n0012_cy<1>_rt_240 ),
    .O(\U1/_n0012 [23])
  );
  MUXCY   \U1/Madd__n0012_cy<2>  (
    .CI(\U1/Madd__n0012_cy [1]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<2>_rt_241 ),
    .O(\U1/Madd__n0012_cy [2])
  );
  XORCY   \U1/Madd__n0012_xor<2>  (
    .CI(\U1/Madd__n0012_cy [1]),
    .LI(\U1/Madd__n0012_cy<2>_rt_241 ),
    .O(\U1/_n0012 [22])
  );
  MUXCY   \U1/Madd__n0012_cy<3>  (
    .CI(\U1/Madd__n0012_cy [2]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<3>_rt_242 ),
    .O(\U1/Madd__n0012_cy [3])
  );
  XORCY   \U1/Madd__n0012_xor<3>  (
    .CI(\U1/Madd__n0012_cy [2]),
    .LI(\U1/Madd__n0012_cy<3>_rt_242 ),
    .O(\U1/_n0012 [21])
  );
  MUXCY   \U1/Madd__n0012_cy<4>  (
    .CI(\U1/Madd__n0012_cy [3]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<4>_rt_243 ),
    .O(\U1/Madd__n0012_cy [4])
  );
  XORCY   \U1/Madd__n0012_xor<4>  (
    .CI(\U1/Madd__n0012_cy [3]),
    .LI(\U1/Madd__n0012_cy<4>_rt_243 ),
    .O(\U1/_n0012 [20])
  );
  MUXCY   \U1/Madd__n0012_cy<5>  (
    .CI(\U1/Madd__n0012_cy [4]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<5>_rt_244 ),
    .O(\U1/Madd__n0012_cy [5])
  );
  XORCY   \U1/Madd__n0012_xor<5>  (
    .CI(\U1/Madd__n0012_cy [4]),
    .LI(\U1/Madd__n0012_cy<5>_rt_244 ),
    .O(\U1/_n0012 [19])
  );
  MUXCY   \U1/Madd__n0012_cy<6>  (
    .CI(\U1/Madd__n0012_cy [5]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<6>_rt_245 ),
    .O(\U1/Madd__n0012_cy [6])
  );
  XORCY   \U1/Madd__n0012_xor<6>  (
    .CI(\U1/Madd__n0012_cy [5]),
    .LI(\U1/Madd__n0012_cy<6>_rt_245 ),
    .O(\U1/_n0012 [18])
  );
  MUXCY   \U1/Madd__n0012_cy<7>  (
    .CI(\U1/Madd__n0012_cy [6]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<7>_rt_246 ),
    .O(\U1/Madd__n0012_cy [7])
  );
  XORCY   \U1/Madd__n0012_xor<7>  (
    .CI(\U1/Madd__n0012_cy [6]),
    .LI(\U1/Madd__n0012_cy<7>_rt_246 ),
    .O(\U1/_n0012 [17])
  );
  MUXCY   \U1/Madd__n0012_cy<8>  (
    .CI(\U1/Madd__n0012_cy [7]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<8>_rt_247 ),
    .O(\U1/Madd__n0012_cy [8])
  );
  XORCY   \U1/Madd__n0012_xor<8>  (
    .CI(\U1/Madd__n0012_cy [7]),
    .LI(\U1/Madd__n0012_cy<8>_rt_247 ),
    .O(\U1/_n0012 [16])
  );
  MUXCY   \U1/Madd__n0012_cy<9>  (
    .CI(\U1/Madd__n0012_cy [8]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<9>_rt_248 ),
    .O(\U1/Madd__n0012_cy [9])
  );
  XORCY   \U1/Madd__n0012_xor<9>  (
    .CI(\U1/Madd__n0012_cy [8]),
    .LI(\U1/Madd__n0012_cy<9>_rt_248 ),
    .O(\U1/_n0012 [15])
  );
  MUXCY   \U1/Madd__n0012_cy<10>  (
    .CI(\U1/Madd__n0012_cy [9]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<10>_rt_249 ),
    .O(\U1/Madd__n0012_cy [10])
  );
  XORCY   \U1/Madd__n0012_xor<10>  (
    .CI(\U1/Madd__n0012_cy [9]),
    .LI(\U1/Madd__n0012_cy<10>_rt_249 ),
    .O(\U1/_n0012 [14])
  );
  MUXCY   \U1/Madd__n0012_cy<11>  (
    .CI(\U1/Madd__n0012_cy [10]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<11>_rt_250 ),
    .O(\U1/Madd__n0012_cy [11])
  );
  XORCY   \U1/Madd__n0012_xor<11>  (
    .CI(\U1/Madd__n0012_cy [10]),
    .LI(\U1/Madd__n0012_cy<11>_rt_250 ),
    .O(\U1/_n0012 [13])
  );
  MUXCY   \U1/Madd__n0012_cy<12>  (
    .CI(\U1/Madd__n0012_cy [11]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<12>_rt_251 ),
    .O(\U1/Madd__n0012_cy [12])
  );
  XORCY   \U1/Madd__n0012_xor<12>  (
    .CI(\U1/Madd__n0012_cy [11]),
    .LI(\U1/Madd__n0012_cy<12>_rt_251 ),
    .O(\U1/_n0012 [12])
  );
  MUXCY   \U1/Madd__n0012_cy<13>  (
    .CI(\U1/Madd__n0012_cy [12]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<13>_rt_252 ),
    .O(\U1/Madd__n0012_cy [13])
  );
  XORCY   \U1/Madd__n0012_xor<13>  (
    .CI(\U1/Madd__n0012_cy [12]),
    .LI(\U1/Madd__n0012_cy<13>_rt_252 ),
    .O(\U1/_n0012 [11])
  );
  MUXCY   \U1/Madd__n0012_cy<14>  (
    .CI(\U1/Madd__n0012_cy [13]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<14>_rt_253 ),
    .O(\U1/Madd__n0012_cy [14])
  );
  XORCY   \U1/Madd__n0012_xor<14>  (
    .CI(\U1/Madd__n0012_cy [13]),
    .LI(\U1/Madd__n0012_cy<14>_rt_253 ),
    .O(\U1/_n0012 [10])
  );
  MUXCY   \U1/Madd__n0012_cy<15>  (
    .CI(\U1/Madd__n0012_cy [14]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<15>_rt_254 ),
    .O(\U1/Madd__n0012_cy [15])
  );
  XORCY   \U1/Madd__n0012_xor<15>  (
    .CI(\U1/Madd__n0012_cy [14]),
    .LI(\U1/Madd__n0012_cy<15>_rt_254 ),
    .O(\U1/_n0012 [9])
  );
  MUXCY   \U1/Madd__n0012_cy<16>  (
    .CI(\U1/Madd__n0012_cy [15]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<16>_rt_255 ),
    .O(\U1/Madd__n0012_cy [16])
  );
  XORCY   \U1/Madd__n0012_xor<16>  (
    .CI(\U1/Madd__n0012_cy [15]),
    .LI(\U1/Madd__n0012_cy<16>_rt_255 ),
    .O(\U1/_n0012 [8])
  );
  MUXCY   \U1/Madd__n0012_cy<17>  (
    .CI(\U1/Madd__n0012_cy [16]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<17>_rt_256 ),
    .O(\U1/Madd__n0012_cy [17])
  );
  XORCY   \U1/Madd__n0012_xor<17>  (
    .CI(\U1/Madd__n0012_cy [16]),
    .LI(\U1/Madd__n0012_cy<17>_rt_256 ),
    .O(\U1/_n0012 [7])
  );
  MUXCY   \U1/Madd__n0012_cy<18>  (
    .CI(\U1/Madd__n0012_cy [17]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<18>_rt_257 ),
    .O(\U1/Madd__n0012_cy [18])
  );
  XORCY   \U1/Madd__n0012_xor<18>  (
    .CI(\U1/Madd__n0012_cy [17]),
    .LI(\U1/Madd__n0012_cy<18>_rt_257 ),
    .O(\U1/_n0012 [6])
  );
  MUXCY   \U1/Madd__n0012_cy<19>  (
    .CI(\U1/Madd__n0012_cy [18]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<19>_rt_258 ),
    .O(\U1/Madd__n0012_cy [19])
  );
  XORCY   \U1/Madd__n0012_xor<19>  (
    .CI(\U1/Madd__n0012_cy [18]),
    .LI(\U1/Madd__n0012_cy<19>_rt_258 ),
    .O(\U1/_n0012 [5])
  );
  MUXCY   \U1/Madd__n0012_cy<20>  (
    .CI(\U1/Madd__n0012_cy [19]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<20>_rt_259 ),
    .O(\U1/Madd__n0012_cy [20])
  );
  XORCY   \U1/Madd__n0012_xor<20>  (
    .CI(\U1/Madd__n0012_cy [19]),
    .LI(\U1/Madd__n0012_cy<20>_rt_259 ),
    .O(\U1/_n0012 [4])
  );
  MUXCY   \U1/Madd__n0012_cy<21>  (
    .CI(\U1/Madd__n0012_cy [20]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<21>_rt_260 ),
    .O(\U1/Madd__n0012_cy [21])
  );
  XORCY   \U1/Madd__n0012_xor<21>  (
    .CI(\U1/Madd__n0012_cy [20]),
    .LI(\U1/Madd__n0012_cy<21>_rt_260 ),
    .O(\U1/_n0012 [3])
  );
  MUXCY   \U1/Madd__n0012_cy<22>  (
    .CI(\U1/Madd__n0012_cy [21]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<22>_rt_261 ),
    .O(\U1/Madd__n0012_cy [22])
  );
  XORCY   \U1/Madd__n0012_xor<22>  (
    .CI(\U1/Madd__n0012_cy [21]),
    .LI(\U1/Madd__n0012_cy<22>_rt_261 ),
    .O(\U1/_n0012 [2])
  );
  MUXCY   \U1/Madd__n0012_cy<23>  (
    .CI(\U1/Madd__n0012_cy [22]),
    .DI(N0),
    .S(\U1/Madd__n0012_cy<23>_rt_262 ),
    .O(\U1/Madd__n0012_cy [23])
  );
  XORCY   \U1/Madd__n0012_xor<23>  (
    .CI(\U1/Madd__n0012_cy [22]),
    .LI(\U1/Madd__n0012_cy<23>_rt_262 ),
    .O(\U1/_n0012 [1])
  );
  XORCY   \U1/Madd__n0012_xor<24>  (
    .CI(\U1/Madd__n0012_cy [23]),
    .LI(\U1/Madd__n0012_xor<24>_rt_274 ),
    .O(\U1/_n0012 [0])
  );
  XORCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_xor<11>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<10>_137 ),
    .LI(\U2/timer [11]),
    .O(\U2/timer[11]_GND_7_o_add_0_OUT<11> )
  );
  XORCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_xor<10>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<9>_138 ),
    .LI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<10>_rt_263 ),
    .O(\U2/timer[11]_GND_7_o_add_0_OUT<10> )
  );
  MUXCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<10>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<9>_138 ),
    .DI(N0),
    .S(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<10>_rt_263 ),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<10>_137 )
  );
  XORCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_xor<9>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<8>_139 ),
    .LI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<9>_rt_264 ),
    .O(\U2/timer[11]_GND_7_o_add_0_OUT<9> )
  );
  MUXCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<9>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<8>_139 ),
    .DI(N0),
    .S(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<9>_rt_264 ),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<9>_138 )
  );
  XORCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_xor<8>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<7>_140 ),
    .LI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<8>_rt_265 ),
    .O(\U2/timer[11]_GND_7_o_add_0_OUT<8> )
  );
  MUXCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<8>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<7>_140 ),
    .DI(N0),
    .S(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<8>_rt_265 ),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<8>_139 )
  );
  XORCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_xor<7>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<6>_141 ),
    .LI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<7>_rt_266 ),
    .O(\U2/timer[11]_GND_7_o_add_0_OUT<7> )
  );
  MUXCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<7>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<6>_141 ),
    .DI(N0),
    .S(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<7>_rt_266 ),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<7>_140 )
  );
  XORCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_xor<6>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<5>_142 ),
    .LI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<6>_rt_267 ),
    .O(\U2/timer[11]_GND_7_o_add_0_OUT<6> )
  );
  MUXCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<6>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<5>_142 ),
    .DI(N0),
    .S(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<6>_rt_267 ),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<6>_141 )
  );
  XORCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_xor<5>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<4>_143 ),
    .LI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<5>_rt_268 ),
    .O(\U2/timer[11]_GND_7_o_add_0_OUT<5> )
  );
  MUXCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<5>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<4>_143 ),
    .DI(N0),
    .S(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<5>_rt_268 ),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<5>_142 )
  );
  XORCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_xor<4>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<3>_144 ),
    .LI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<4>_rt_269 ),
    .O(\U2/timer[11]_GND_7_o_add_0_OUT<4> )
  );
  MUXCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<4>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<3>_144 ),
    .DI(N0),
    .S(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<4>_rt_269 ),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<4>_143 )
  );
  XORCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_xor<3>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<2>_145 ),
    .LI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<3>_rt_270 ),
    .O(\U2/timer[11]_GND_7_o_add_0_OUT<3> )
  );
  MUXCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<3>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<2>_145 ),
    .DI(N0),
    .S(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<3>_rt_270 ),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<3>_144 )
  );
  XORCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_xor<2>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<1>_146 ),
    .LI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<2>_rt_271 ),
    .O(\U2/timer[11]_GND_7_o_add_0_OUT<2> )
  );
  MUXCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<2>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<1>_146 ),
    .DI(N0),
    .S(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<2>_rt_271 ),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<2>_145 )
  );
  XORCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_xor<1>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<0>_147 ),
    .LI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<1>_rt_272 ),
    .O(\U2/timer[11]_GND_7_o_add_0_OUT<1> )
  );
  MUXCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<1>  (
    .CI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<0>_147 ),
    .DI(N0),
    .S(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<1>_rt_272 ),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<1>_146 )
  );
  XORCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_xor<0>  (
    .CI(N0),
    .LI(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_lut<0> ),
    .O(\U2/timer[11]_GND_7_o_add_0_OUT<0> )
  );
  MUXCY   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_lut<0> ),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<0>_147 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U2/timer_11  (
    .C(\U1/flipping_3 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/timer[11]_GND_7_o_mux_3_OUT<11> ),
    .Q(\U2/timer [11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U2/timer_10  (
    .C(\U1/flipping_3 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/timer[11]_GND_7_o_mux_3_OUT<10> ),
    .Q(\U2/timer [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U2/timer_9  (
    .C(\U1/flipping_3 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/timer[11]_GND_7_o_mux_3_OUT<9> ),
    .Q(\U2/timer [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U2/timer_8  (
    .C(\U1/flipping_3 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/timer[11]_GND_7_o_mux_3_OUT<8> ),
    .Q(\U2/timer [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U2/timer_7  (
    .C(\U1/flipping_3 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/timer[11]_GND_7_o_mux_3_OUT<7> ),
    .Q(\U2/timer [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U2/timer_6  (
    .C(\U1/flipping_3 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/timer[11]_GND_7_o_add_0_OUT<6> ),
    .Q(\U2/timer [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U2/timer_5  (
    .C(\U1/flipping_3 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/timer[11]_GND_7_o_mux_3_OUT<5> ),
    .Q(\U2/timer [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U2/timer_4  (
    .C(\U1/flipping_3 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/timer[11]_GND_7_o_mux_3_OUT<4> ),
    .Q(\U2/timer [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U2/timer_3  (
    .C(\U1/flipping_3 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/timer[11]_GND_7_o_mux_3_OUT<3> ),
    .Q(\U2/timer [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U2/timer_2  (
    .C(\U1/flipping_3 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/timer[11]_GND_7_o_mux_3_OUT<2> ),
    .Q(\U2/timer [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U2/timer_1  (
    .C(\U1/flipping_3 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/timer[11]_GND_7_o_add_0_OUT<1> ),
    .Q(\U2/timer [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U2/timer_0  (
    .C(\U1/flipping_3 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/timer[11]_GND_7_o_add_0_OUT<0> ),
    .Q(\U2/timer [0])
  );
  LD #(
    .INIT ( 1'b0 ))
  \U2/count_2  (
    .D(\U2/pr_state[2]_X_7_o_Mux_38_o ),
    .G(\U2/Mram__n01016 ),
    .Q(\U2/count_2_152 )
  );
  LD #(
    .INIT ( 1'b0 ))
  \U2/count_3  (
    .D(N1),
    .G(\U2/Mram__n01016 ),
    .Q(\U2/count_3_153 )
  );
  LD #(
    .INIT ( 1'b0 ))
  \U2/count_4  (
    .D(TEST_IBUF_1),
    .G(\U2/Mram__n01016 ),
    .Q(\U2/count_4_156 )
  );
  LD #(
    .INIT ( 1'b0 ))
  \U2/count_5  (
    .D(\U2/pr_state[2]_X_7_o_Mux_32_o ),
    .G(\U2/Mram__n01016 ),
    .Q(\U2/count_5_158 )
  );
  LD #(
    .INIT ( 1'b0 ))
  \U2/count_10  (
    .D(\U2/pr_state[2]_X_7_o_Mux_22_o ),
    .G(\U2/Mram__n01016 ),
    .Q(\U2/count_10_168 )
  );
  LD #(
    .INIT ( 1'b0 ))
  \U2/count_8  (
    .D(\U2/pr_state[2]_X_7_o_Mux_26_o ),
    .G(\U2/Mram__n01016 ),
    .Q(\U2/count_8_170 )
  );
  LD #(
    .INIT ( 1'b0 ))
  \U2/count_9  (
    .D(\U2/pr_state[2]_X_7_o_Mux_24_o ),
    .G(\U2/Mram__n01016 ),
    .Q(\U2/count_9_171 )
  );
  LD #(
    .INIT ( 1'b0 ))
  \U2/count_7  (
    .D(\U2/pr_state[2]_X_7_o_Mux_28_o ),
    .G(\U2/Mram__n01016 ),
    .Q(\U2/count_7_169 )
  );
  FDPE #(
    .INIT ( 1'b0 ))
  \U2/pr_state_2  (
    .C(\U1/flipping_3 ),
    .CE(\U2/count[11]_timer[11]_equal_2_o122 ),
    .D(\U2/pr_state_2_dpot_283 ),
    .PRE(STDY_IBUF_2),
    .Q(\U2/pr_state [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U2/pr_state_1  (
    .C(\U1/flipping_3 ),
    .CE(\U2/count[11]_timer[11]_equal_2_o122 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/pr_state_1_dpot_282 ),
    .Q(\U2/pr_state [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U2/pr_state_0  (
    .C(\U1/flipping_3 ),
    .CE(\U2/count[11]_timer[11]_equal_2_o122 ),
    .CLR(STDY_IBUF_2),
    .D(\U2/pr_state_0_dpot_281 ),
    .Q(\U2/pr_state [0])
  );
  LD #(
    .INIT ( 1'b0 ))
  \U2/nx_state_1  (
    .D(\U2/Mram__n01017 ),
    .G(\U2/Mram__n01016 ),
    .Q(\U2/nx_state_1_155 )
  );
  LD #(
    .INIT ( 1'b0 ))
  \U2/nx_state_0  (
    .D(\U2/Mram__n01018 ),
    .G(\U2/Mram__n01016 ),
    .Q(\U2/nx_state_0_154 )
  );
  LUT3 #(
    .INIT ( 8'h51 ))
  \U2/Mmux_pr_state[2]_X_7_o_Mux_26_o11  (
    .I0(TEST_IBUF_1),
    .I1(\U2/pr_state [1]),
    .I2(\U2/pr_state [0]),
    .O(\U2/pr_state[2]_X_7_o_Mux_26_o )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \U2/Mram__n010171  (
    .I0(\U2/pr_state [2]),
    .I1(\U2/pr_state [0]),
    .I2(\U2/pr_state [1]),
    .O(\U2/Mram__n01017 )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \U2/Mram__n010141  (
    .I0(\U2/pr_state [1]),
    .I1(\U2/pr_state [0]),
    .I2(\U2/pr_state [2]),
    .O(R2Y2G2_1_OBUF_8)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \U2/Mmux_pr_state[2]_X_7_o_Mux_22_o11  (
    .I0(TEST_IBUF_1),
    .I1(\U2/pr_state [1]),
    .I2(\U2/pr_state [0]),
    .O(\U2/pr_state[2]_X_7_o_Mux_22_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U2/Mmux_pr_state[2]_X_7_o_Mux_38_o11  (
    .I0(TEST_IBUF_1),
    .I1(\U2/pr_state [1]),
    .I2(\U2/pr_state [0]),
    .O(\U2/pr_state[2]_X_7_o_Mux_38_o )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \U2/Mmux_pr_state[2]_X_7_o_Mux_28_o11  (
    .I0(TEST_IBUF_1),
    .I1(\U2/pr_state [1]),
    .I2(\U2/pr_state [0]),
    .O(\U2/pr_state[2]_X_7_o_Mux_28_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U2/Mmux_pr_state[2]_X_7_o_Mux_32_o11  (
    .I0(\U2/pr_state [0]),
    .I1(TEST_IBUF_1),
    .O(\U2/pr_state[2]_X_7_o_Mux_32_o )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U2/Mmux_pr_state[2]_X_7_o_Mux_24_o11  (
    .I0(\U2/pr_state [0]),
    .I1(TEST_IBUF_1),
    .O(\U2/pr_state[2]_X_7_o_Mux_24_o )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U2/Mram__n010181  (
    .I0(\U2/pr_state [0]),
    .I1(\U2/pr_state [2]),
    .O(\U2/Mram__n01018 )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \U2/Mram__n010161  (
    .I0(\U2/pr_state [2]),
    .I1(\U2/pr_state [1]),
    .I2(\U2/pr_state [0]),
    .O(\U2/Mram__n01016 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U2/Mram__n010151  (
    .I0(\U2/pr_state [2]),
    .I1(\U2/pr_state [1]),
    .O(R2Y2G2_2_OBUF_7)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \U2/Mram__n010131  (
    .I0(\U2/pr_state [0]),
    .I1(\U2/pr_state [1]),
    .I2(\U2/pr_state [2]),
    .O(R2Y2G2_0_OBUF_9)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U2/Mram__n010121  (
    .I0(\U2/pr_state [1]),
    .I1(\U2/pr_state [2]),
    .O(R1Y1G1_2_OBUF_4)
  );
  LUT3 #(
    .INIT ( 8'h18 ))
  \U2/Mram__n0101111  (
    .I0(\U2/pr_state [0]),
    .I1(\U2/pr_state [1]),
    .I2(\U2/pr_state [2]),
    .O(R1Y1G1_1_OBUF_5)
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \U2/Mram__n010111  (
    .I0(\U2/pr_state [0]),
    .I1(\U2/pr_state [1]),
    .I2(\U2/pr_state [2]),
    .O(R1Y1G1_0_OBUF_6)
  );
  LUT6 #(
    .INIT ( 64'h0040000000000000 ))
  \U1/_n0029<0>1  (
    .I0(\U1/_n0012 [11]),
    .I1(\U1/_n0012 [10]),
    .I2(\U1/_n0012 [9]),
    .I3(\U1/_n0012 [6]),
    .I4(\U1/_n0012 [7]),
    .I5(\U1/_n0012 [8]),
    .O(\U1/_n0029 [0])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000400 ))
  \U1/_n0029<0>3  (
    .I0(\U1/_n0012 [17]),
    .I1(\U1/_n0012 [16]),
    .I2(\U1/_n0012 [15]),
    .I3(\U1/_n0012 [14]),
    .I4(\U1/_n0012 [13]),
    .I5(\U1/_n0012 [12]),
    .O(\U1/_n0029<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h0008000400020001 ))
  \U2/count[11]_timer[11]_equal_2_o123  (
    .I0(\U2/count_2_152 ),
    .I1(\U2/count_3_153 ),
    .I2(\U2/timer[11]_GND_7_o_add_0_OUT<0> ),
    .I3(\U2/timer[11]_GND_7_o_add_0_OUT<1> ),
    .I4(\U2/timer[11]_GND_7_o_add_0_OUT<2> ),
    .I5(\U2/timer[11]_GND_7_o_add_0_OUT<3> ),
    .O(\U2/count[11]_timer[11]_equal_2_o122 )
  );
  LUT5 #(
    .INIT ( 32'h00008421 ))
  \U2/count[11]_timer[11]_equal_2_o124  (
    .I0(\U2/count_4_156 ),
    .I1(\U2/count_5_158 ),
    .I2(\U2/timer[11]_GND_7_o_add_0_OUT<4> ),
    .I3(\U2/timer[11]_GND_7_o_add_0_OUT<5> ),
    .I4(\U2/timer[11]_GND_7_o_add_0_OUT<6> ),
    .O(\U2/count[11]_timer[11]_equal_2_o123_207 )
  );
  IBUF   TEST_IBUF (
    .I(TEST),
    .O(TEST_IBUF_1)
  );
  IBUF   STDY_IBUF (
    .I(STDY),
    .O(STDY_IBUF_2)
  );
  OBUF   R1Y1G1_2_OBUF (
    .I(R1Y1G1_2_OBUF_4),
    .O(R1Y1G1[2])
  );
  OBUF   R1Y1G1_1_OBUF (
    .I(R1Y1G1_1_OBUF_5),
    .O(R1Y1G1[1])
  );
  OBUF   R1Y1G1_0_OBUF (
    .I(R1Y1G1_0_OBUF_6),
    .O(R1Y1G1[0])
  );
  OBUF   R2Y2G2_2_OBUF (
    .I(R2Y2G2_2_OBUF_7),
    .O(R2Y2G2[2])
  );
  OBUF   R2Y2G2_1_OBUF (
    .I(R2Y2G2_1_OBUF_8),
    .O(R2Y2G2[1])
  );
  OBUF   R2Y2G2_0_OBUF (
    .I(R2Y2G2_0_OBUF_9),
    .O(R2Y2G2[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<1>_rt  (
    .I0(\U1/DIV.div [1]),
    .O(\U1/Mcount_DIV.div_cy<1>_rt_217 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<2>_rt  (
    .I0(\U1/DIV.div [2]),
    .O(\U1/Mcount_DIV.div_cy<2>_rt_218 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<3>_rt  (
    .I0(\U1/DIV.div [3]),
    .O(\U1/Mcount_DIV.div_cy<3>_rt_219 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<4>_rt  (
    .I0(\U1/DIV.div [4]),
    .O(\U1/Mcount_DIV.div_cy<4>_rt_220 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<5>_rt  (
    .I0(\U1/DIV.div [5]),
    .O(\U1/Mcount_DIV.div_cy<5>_rt_221 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<6>_rt  (
    .I0(\U1/DIV.div [6]),
    .O(\U1/Mcount_DIV.div_cy<6>_rt_222 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<7>_rt  (
    .I0(\U1/DIV.div [7]),
    .O(\U1/Mcount_DIV.div_cy<7>_rt_223 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<8>_rt  (
    .I0(\U1/DIV.div [8]),
    .O(\U1/Mcount_DIV.div_cy<8>_rt_224 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<9>_rt  (
    .I0(\U1/DIV.div [9]),
    .O(\U1/Mcount_DIV.div_cy<9>_rt_225 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<10>_rt  (
    .I0(\U1/DIV.div [10]),
    .O(\U1/Mcount_DIV.div_cy<10>_rt_226 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<11>_rt  (
    .I0(\U1/DIV.div [11]),
    .O(\U1/Mcount_DIV.div_cy<11>_rt_227 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<12>_rt  (
    .I0(\U1/DIV.div [12]),
    .O(\U1/Mcount_DIV.div_cy<12>_rt_228 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<13>_rt  (
    .I0(\U1/DIV.div [13]),
    .O(\U1/Mcount_DIV.div_cy<13>_rt_229 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<14>_rt  (
    .I0(\U1/DIV.div [14]),
    .O(\U1/Mcount_DIV.div_cy<14>_rt_230 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<15>_rt  (
    .I0(\U1/DIV.div [15]),
    .O(\U1/Mcount_DIV.div_cy<15>_rt_231 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<16>_rt  (
    .I0(\U1/DIV.div [16]),
    .O(\U1/Mcount_DIV.div_cy<16>_rt_232 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<17>_rt  (
    .I0(\U1/DIV.div [17]),
    .O(\U1/Mcount_DIV.div_cy<17>_rt_233 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<18>_rt  (
    .I0(\U1/DIV.div [18]),
    .O(\U1/Mcount_DIV.div_cy<18>_rt_234 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<19>_rt  (
    .I0(\U1/DIV.div [19]),
    .O(\U1/Mcount_DIV.div_cy<19>_rt_235 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<20>_rt  (
    .I0(\U1/DIV.div [20]),
    .O(\U1/Mcount_DIV.div_cy<20>_rt_236 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<21>_rt  (
    .I0(\U1/DIV.div [21]),
    .O(\U1/Mcount_DIV.div_cy<21>_rt_237 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<22>_rt  (
    .I0(\U1/DIV.div [22]),
    .O(\U1/Mcount_DIV.div_cy<22>_rt_238 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_cy<23>_rt  (
    .I0(\U1/DIV.div [23]),
    .O(\U1/Mcount_DIV.div_cy<23>_rt_239 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<1>_rt  (
    .I0(\U1/DIV.div [1]),
    .O(\U1/Madd__n0012_cy<1>_rt_240 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<2>_rt  (
    .I0(\U1/DIV.div [2]),
    .O(\U1/Madd__n0012_cy<2>_rt_241 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<3>_rt  (
    .I0(\U1/DIV.div [3]),
    .O(\U1/Madd__n0012_cy<3>_rt_242 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<4>_rt  (
    .I0(\U1/DIV.div [4]),
    .O(\U1/Madd__n0012_cy<4>_rt_243 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<5>_rt  (
    .I0(\U1/DIV.div [5]),
    .O(\U1/Madd__n0012_cy<5>_rt_244 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<6>_rt  (
    .I0(\U1/DIV.div [6]),
    .O(\U1/Madd__n0012_cy<6>_rt_245 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<7>_rt  (
    .I0(\U1/DIV.div [7]),
    .O(\U1/Madd__n0012_cy<7>_rt_246 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<8>_rt  (
    .I0(\U1/DIV.div [8]),
    .O(\U1/Madd__n0012_cy<8>_rt_247 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<9>_rt  (
    .I0(\U1/DIV.div [9]),
    .O(\U1/Madd__n0012_cy<9>_rt_248 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<10>_rt  (
    .I0(\U1/DIV.div [10]),
    .O(\U1/Madd__n0012_cy<10>_rt_249 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<11>_rt  (
    .I0(\U1/DIV.div [11]),
    .O(\U1/Madd__n0012_cy<11>_rt_250 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<12>_rt  (
    .I0(\U1/DIV.div [12]),
    .O(\U1/Madd__n0012_cy<12>_rt_251 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<13>_rt  (
    .I0(\U1/DIV.div [13]),
    .O(\U1/Madd__n0012_cy<13>_rt_252 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<14>_rt  (
    .I0(\U1/DIV.div [14]),
    .O(\U1/Madd__n0012_cy<14>_rt_253 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<15>_rt  (
    .I0(\U1/DIV.div [15]),
    .O(\U1/Madd__n0012_cy<15>_rt_254 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<16>_rt  (
    .I0(\U1/DIV.div [16]),
    .O(\U1/Madd__n0012_cy<16>_rt_255 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<17>_rt  (
    .I0(\U1/DIV.div [17]),
    .O(\U1/Madd__n0012_cy<17>_rt_256 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<18>_rt  (
    .I0(\U1/DIV.div [18]),
    .O(\U1/Madd__n0012_cy<18>_rt_257 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<19>_rt  (
    .I0(\U1/DIV.div [19]),
    .O(\U1/Madd__n0012_cy<19>_rt_258 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<20>_rt  (
    .I0(\U1/DIV.div [20]),
    .O(\U1/Madd__n0012_cy<20>_rt_259 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<21>_rt  (
    .I0(\U1/DIV.div [21]),
    .O(\U1/Madd__n0012_cy<21>_rt_260 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<22>_rt  (
    .I0(\U1/DIV.div [22]),
    .O(\U1/Madd__n0012_cy<22>_rt_261 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_cy<23>_rt  (
    .I0(\U1/DIV.div [23]),
    .O(\U1/Madd__n0012_cy<23>_rt_262 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<10>_rt  (
    .I0(\U2/timer [10]),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<10>_rt_263 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<9>_rt  (
    .I0(\U2/timer [9]),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<9>_rt_264 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<8>_rt  (
    .I0(\U2/timer [8]),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<8>_rt_265 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<7>_rt  (
    .I0(\U2/timer [7]),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<7>_rt_266 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<6>_rt  (
    .I0(\U2/timer [6]),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<6>_rt_267 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<5>_rt  (
    .I0(\U2/timer [5]),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<5>_rt_268 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<4>_rt  (
    .I0(\U2/timer [4]),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<4>_rt_269 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<3>_rt  (
    .I0(\U2/timer [3]),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<3>_rt_270 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<2>_rt  (
    .I0(\U2/timer [2]),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<2>_rt_271 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<1>_rt  (
    .I0(\U2/timer [1]),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_cy<1>_rt_272 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_DIV.div_xor<24>_rt  (
    .I0(\U1/DIV.div [24]),
    .O(\U1/Mcount_DIV.div_xor<24>_rt_273 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Madd__n0012_xor<24>_rt  (
    .I0(\U1/DIV.div [24]),
    .O(\U1/Madd__n0012_xor<24>_rt_274 )
  );
  LUT6 #(
    .INIT ( 64'hFFEFFFFFFFFFFFFF ))
  \U1/_n0029<0>6_SW0  (
    .I0(\U1/_n0012 [24]),
    .I1(\U1/_n0012 [20]),
    .I2(\U1/_n0012 [19]),
    .I3(\U1/_n0012 [18]),
    .I4(\U1/_n0012 [3]),
    .I5(\U1/_n0012 [2]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h7FF7DFFDBFFBEFFE ))
  \U2/count[11]_timer[11]_equal_2_o125_SW0  (
    .I0(\U2/count_10_168 ),
    .I1(\U2/count_9_171 ),
    .I2(\U2/count_8_170 ),
    .I3(\U2/timer[11]_GND_7_o_add_0_OUT<8> ),
    .I4(\U2/timer[11]_GND_7_o_add_0_OUT<9> ),
    .I5(\U2/timer[11]_GND_7_o_add_0_OUT<10> ),
    .O(N6)
  );
  FD   \U1/flipping  (
    .C(CLK_BUFGP_0),
    .D(\U1/flipping_rstpot_277 ),
    .Q(\U1/flipping_3 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0F070F0F0F0 ))
  \U2/Mmux_timer[11]_GND_7_o_mux_3_OUT31  (
    .I0(\U2/count_7_169 ),
    .I1(\U2/timer[11]_GND_7_o_add_0_OUT<7> ),
    .I2(\U2/timer[11]_GND_7_o_add_0_OUT<11> ),
    .I3(\U2/count[11]_timer[11]_equal_2_o122 ),
    .I4(\U2/count[11]_timer[11]_equal_2_o123_207 ),
    .I5(N6),
    .O(\U2/timer[11]_GND_7_o_mux_3_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCC4CCCCCCC ))
  \U2/Mmux_timer[11]_GND_7_o_mux_3_OUT101  (
    .I0(\U2/count_7_169 ),
    .I1(\U2/timer[11]_GND_7_o_add_0_OUT<7> ),
    .I2(\U2/timer[11]_GND_7_o_add_0_OUT<11> ),
    .I3(\U2/count[11]_timer[11]_equal_2_o122 ),
    .I4(\U2/count[11]_timer[11]_equal_2_o123_207 ),
    .I5(N6),
    .O(\U2/timer[11]_GND_7_o_mux_3_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'h0100000000000000 ))
  \U1/flipping_rstpot_SW0  (
    .I0(\U1/_n0012 [23]),
    .I1(\U1/_n0012 [22]),
    .I2(\U1/_n0012 [21]),
    .I3(\U1/_n0012 [5]),
    .I4(\U1/_n0012 [4]),
    .I5(\U1/_n0012 [1]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'hA9AAAAAAAAAAAAAA ))
  \U1/flipping_rstpot  (
    .I0(\U1/flipping_3 ),
    .I1(\U1/_n0012 [0]),
    .I2(N4),
    .I3(\U1/_n0029<0>2 ),
    .I4(N10),
    .I5(\U1/_n0029 [0]),
    .O(\U1/flipping_rstpot_277 )
  );
  LUT3 #(
    .INIT ( 8'h81 ))
  \U2/count[11]_timer[11]_equal_2_o125_SW1  (
    .I0(\U2/count_7_169 ),
    .I1(\U2/timer[11]_GND_7_o_add_0_OUT<7> ),
    .I2(\U2/timer[11]_GND_7_o_add_0_OUT<11> ),
    .O(N12)
  );
  LUT5 #(
    .INIT ( 32'hAAAA2AAA ))
  \U2/Mmux_timer[11]_GND_7_o_mux_3_OUT21  (
    .I0(\U2/timer[11]_GND_7_o_add_0_OUT<10> ),
    .I1(\U2/count[11]_timer[11]_equal_2_o122 ),
    .I2(N12),
    .I3(\U2/count[11]_timer[11]_equal_2_o123_207 ),
    .I4(N6),
    .O(\U2/timer[11]_GND_7_o_mux_3_OUT<10> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA2AAA ))
  \U2/Mmux_timer[11]_GND_7_o_mux_3_OUT51  (
    .I0(\U2/timer[11]_GND_7_o_add_0_OUT<2> ),
    .I1(\U2/count[11]_timer[11]_equal_2_o122 ),
    .I2(N12),
    .I3(\U2/count[11]_timer[11]_equal_2_o123_207 ),
    .I4(N6),
    .O(\U2/timer[11]_GND_7_o_mux_3_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA2AAA ))
  \U2/Mmux_timer[11]_GND_7_o_mux_3_OUT61  (
    .I0(\U2/timer[11]_GND_7_o_add_0_OUT<3> ),
    .I1(\U2/count[11]_timer[11]_equal_2_o122 ),
    .I2(N12),
    .I3(\U2/count[11]_timer[11]_equal_2_o123_207 ),
    .I4(N6),
    .O(\U2/timer[11]_GND_7_o_mux_3_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA2AAA ))
  \U2/Mmux_timer[11]_GND_7_o_mux_3_OUT71  (
    .I0(\U2/timer[11]_GND_7_o_add_0_OUT<4> ),
    .I1(\U2/count[11]_timer[11]_equal_2_o122 ),
    .I2(N12),
    .I3(\U2/count[11]_timer[11]_equal_2_o123_207 ),
    .I4(N6),
    .O(\U2/timer[11]_GND_7_o_mux_3_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA2AAA ))
  \U2/Mmux_timer[11]_GND_7_o_mux_3_OUT81  (
    .I0(\U2/timer[11]_GND_7_o_add_0_OUT<5> ),
    .I1(\U2/count[11]_timer[11]_equal_2_o122 ),
    .I2(N12),
    .I3(\U2/count[11]_timer[11]_equal_2_o123_207 ),
    .I4(N6),
    .O(\U2/timer[11]_GND_7_o_mux_3_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA2AAA ))
  \U2/Mmux_timer[11]_GND_7_o_mux_3_OUT111  (
    .I0(\U2/timer[11]_GND_7_o_add_0_OUT<8> ),
    .I1(\U2/count[11]_timer[11]_equal_2_o122 ),
    .I2(N12),
    .I3(\U2/count[11]_timer[11]_equal_2_o123_207 ),
    .I4(N6),
    .O(\U2/timer[11]_GND_7_o_mux_3_OUT<8> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA2AAA ))
  \U2/Mmux_timer[11]_GND_7_o_mux_3_OUT121  (
    .I0(\U2/timer[11]_GND_7_o_add_0_OUT<9> ),
    .I1(\U2/count[11]_timer[11]_equal_2_o122 ),
    .I2(N12),
    .I3(\U2/count[11]_timer[11]_equal_2_o123_207 ),
    .I4(N6),
    .O(\U2/timer[11]_GND_7_o_mux_3_OUT<9> )
  );
  LUT5 #(
    .INIT ( 32'h00008100 ))
  \U2/count[11]_timer[11]_equal_2_o125_rstpot  (
    .I0(\U2/count_7_169 ),
    .I1(\U2/timer[11]_GND_7_o_add_0_OUT<7> ),
    .I2(\U2/timer[11]_GND_7_o_add_0_OUT<11> ),
    .I3(\U2/count[11]_timer[11]_equal_2_o123_207 ),
    .I4(N6),
    .O(\U2/count[11]_timer[11]_equal_2_o125_rstpot_280 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U2/pr_state_0_dpot  (
    .I0(\U2/nx_state_0_154 ),
    .I1(\U2/pr_state [0]),
    .I2(\U2/count[11]_timer[11]_equal_2_o125_rstpot_280 ),
    .O(\U2/pr_state_0_dpot_281 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U2/pr_state_1_dpot  (
    .I0(\U2/nx_state_1_155 ),
    .I1(\U2/pr_state [1]),
    .I2(\U2/count[11]_timer[11]_equal_2_o125_rstpot_280 ),
    .O(\U2/pr_state_1_dpot_282 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U2/pr_state_2_dpot  (
    .I0(N0),
    .I1(\U2/pr_state [2]),
    .I2(\U2/count[11]_timer[11]_equal_2_o125_rstpot_280 ),
    .O(\U2/pr_state_2_dpot_283 )
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_0)
  );
  INV   \U1/Mcount_DIV.div_lut<0>_INV_0  (
    .I(\U1/DIV.div [0]),
    .O(\U1/Mcount_DIV.div_lut [0])
  );
  INV   \U1/Madd__n0012_lut<0>_INV_0  (
    .I(\U1/DIV.div [0]),
    .O(\U1/Madd__n0012_lut [0])
  );
  INV   \U2/Madd_timer[11]_GND_7_o_add_0_OUT_lut<0>_INV_0  (
    .I(\U2/timer [0]),
    .O(\U2/Madd_timer[11]_GND_7_o_add_0_OUT_lut<0> )
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

