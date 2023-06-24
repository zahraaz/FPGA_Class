////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: seven_segment_display_VHDL_synthesis.v
// /___/   /\     Timestamp: Wed Nov 30 09:00:08 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim seven_segment_display_VHDL.ngc seven_segment_display_VHDL_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: seven_segment_display_VHDL.ngc
// Output file	: C:\Users\Zahraa\Documents\FPGA\displayoo\netgen\synthesis\seven_segment_display_VHDL_synthesis.v
// # of Modules	: 1
// Design Name	: seven_segment_display_VHDL
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

module seven_segment_display_VHDL (
  clock_100Mhz, reset, crt, Anode_Activate, count, LED_out
);
  input clock_100Mhz;
  input reset;
  input crt;
  output [3 : 0] Anode_Activate;
  output [3 : 0] count;
  output [6 : 0] LED_out;
  wire clock_100Mhz_BUFGP_0;
  wire reset_IBUF_1;
  wire crt_IBUF_2;
  wire pr_state_FSM_FFd1_5;
  wire pr_state_FSM_FFd2_6;
  wire pr_state_FSM_FFd3_7;
  wire Anode_Activate_3_OBUF_8;
  wire Anode_Activate_2_OBUF_9;
  wire Anode_Activate_1_OBUF_10;
  wire Anode_Activate_0_OBUF_11;
  wire LED_out_6_OBUF_12;
  wire LED_out_0_OBUF_13;
  wire pr_state_FSM_FFd4_33;
  wire \pr_state_FSM_FFd3-In ;
  wire \pr_state_FSM_FFd2-In ;
  wire \pr_state_FSM_FFd1-In ;
  wire \Mcount_refresh_counter_cy<1>_rt_92 ;
  wire \Mcount_refresh_counter_cy<2>_rt_93 ;
  wire \Mcount_refresh_counter_cy<3>_rt_94 ;
  wire \Mcount_refresh_counter_cy<4>_rt_95 ;
  wire \Mcount_refresh_counter_cy<5>_rt_96 ;
  wire \Mcount_refresh_counter_cy<6>_rt_97 ;
  wire \Mcount_refresh_counter_cy<7>_rt_98 ;
  wire \Mcount_refresh_counter_cy<8>_rt_99 ;
  wire \Mcount_refresh_counter_cy<9>_rt_100 ;
  wire \Mcount_refresh_counter_cy<10>_rt_101 ;
  wire \Mcount_refresh_counter_cy<11>_rt_102 ;
  wire \Mcount_refresh_counter_cy<12>_rt_103 ;
  wire \Mcount_refresh_counter_cy<13>_rt_104 ;
  wire \Mcount_refresh_counter_cy<14>_rt_105 ;
  wire \Mcount_refresh_counter_cy<15>_rt_106 ;
  wire \Mcount_refresh_counter_cy<16>_rt_107 ;
  wire \Mcount_refresh_counter_cy<17>_rt_108 ;
  wire \Mcount_refresh_counter_cy<18>_rt_109 ;
  wire \Mcount_refresh_counter_xor<19>_rt_110 ;
  wire [19 : 1] refresh_counter;
  wire [19 : 1] Result;
  wire [0 : 0] Mcount_refresh_counter_lut;
  wire [18 : 0] Mcount_refresh_counter_cy;
  VCC   XST_VCC (
    .P(LED_out_6_OBUF_12)
  );
  GND   XST_GND (
    .G(LED_out_0_OBUF_13)
  );
  FDC #(
    .INIT ( 1'b0 ))
  pr_state_FSM_FFd4 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Mcount_refresh_counter_lut[0]),
    .Q(pr_state_FSM_FFd4_33)
  );
  FDC   refresh_counter_1 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[1]),
    .Q(refresh_counter[1])
  );
  FDC   refresh_counter_2 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[2]),
    .Q(refresh_counter[2])
  );
  FDC   refresh_counter_3 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[3]),
    .Q(refresh_counter[3])
  );
  FDC   refresh_counter_4 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[4]),
    .Q(refresh_counter[4])
  );
  FDC   refresh_counter_5 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[5]),
    .Q(refresh_counter[5])
  );
  FDC   refresh_counter_6 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[6]),
    .Q(refresh_counter[6])
  );
  FDC   refresh_counter_7 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[7]),
    .Q(refresh_counter[7])
  );
  FDC   refresh_counter_8 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[8]),
    .Q(refresh_counter[8])
  );
  FDC   refresh_counter_9 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[9]),
    .Q(refresh_counter[9])
  );
  FDC   refresh_counter_10 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[10]),
    .Q(refresh_counter[10])
  );
  FDC   refresh_counter_11 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[11]),
    .Q(refresh_counter[11])
  );
  FDC   refresh_counter_12 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[12]),
    .Q(refresh_counter[12])
  );
  FDC   refresh_counter_13 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[13]),
    .Q(refresh_counter[13])
  );
  FDC   refresh_counter_14 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[14]),
    .Q(refresh_counter[14])
  );
  FDC   refresh_counter_15 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[15]),
    .Q(refresh_counter[15])
  );
  FDC   refresh_counter_16 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[16]),
    .Q(refresh_counter[16])
  );
  FDC   refresh_counter_17 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[17]),
    .Q(refresh_counter[17])
  );
  FDC   refresh_counter_18 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[18]),
    .Q(refresh_counter[18])
  );
  FDC   refresh_counter_19 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[19]),
    .Q(refresh_counter[19])
  );
  FDC #(
    .INIT ( 1'b0 ))
  pr_state_FSM_FFd1 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\pr_state_FSM_FFd1-In ),
    .Q(pr_state_FSM_FFd1_5)
  );
  FDC #(
    .INIT ( 1'b0 ))
  pr_state_FSM_FFd3 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\pr_state_FSM_FFd3-In ),
    .Q(pr_state_FSM_FFd3_7)
  );
  FDC #(
    .INIT ( 1'b0 ))
  pr_state_FSM_FFd2 (
    .C(clock_100Mhz_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\pr_state_FSM_FFd2-In ),
    .Q(pr_state_FSM_FFd2_6)
  );
  MUXCY   \Mcount_refresh_counter_cy<0>  (
    .CI(LED_out_0_OBUF_13),
    .DI(LED_out_6_OBUF_12),
    .S(Mcount_refresh_counter_lut[0]),
    .O(Mcount_refresh_counter_cy[0])
  );
  MUXCY   \Mcount_refresh_counter_cy<1>  (
    .CI(Mcount_refresh_counter_cy[0]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<1>_rt_92 ),
    .O(Mcount_refresh_counter_cy[1])
  );
  XORCY   \Mcount_refresh_counter_xor<1>  (
    .CI(Mcount_refresh_counter_cy[0]),
    .LI(\Mcount_refresh_counter_cy<1>_rt_92 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_refresh_counter_cy<2>  (
    .CI(Mcount_refresh_counter_cy[1]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<2>_rt_93 ),
    .O(Mcount_refresh_counter_cy[2])
  );
  XORCY   \Mcount_refresh_counter_xor<2>  (
    .CI(Mcount_refresh_counter_cy[1]),
    .LI(\Mcount_refresh_counter_cy<2>_rt_93 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_refresh_counter_cy<3>  (
    .CI(Mcount_refresh_counter_cy[2]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<3>_rt_94 ),
    .O(Mcount_refresh_counter_cy[3])
  );
  XORCY   \Mcount_refresh_counter_xor<3>  (
    .CI(Mcount_refresh_counter_cy[2]),
    .LI(\Mcount_refresh_counter_cy<3>_rt_94 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_refresh_counter_cy<4>  (
    .CI(Mcount_refresh_counter_cy[3]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<4>_rt_95 ),
    .O(Mcount_refresh_counter_cy[4])
  );
  XORCY   \Mcount_refresh_counter_xor<4>  (
    .CI(Mcount_refresh_counter_cy[3]),
    .LI(\Mcount_refresh_counter_cy<4>_rt_95 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_refresh_counter_cy<5>  (
    .CI(Mcount_refresh_counter_cy[4]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<5>_rt_96 ),
    .O(Mcount_refresh_counter_cy[5])
  );
  XORCY   \Mcount_refresh_counter_xor<5>  (
    .CI(Mcount_refresh_counter_cy[4]),
    .LI(\Mcount_refresh_counter_cy<5>_rt_96 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_refresh_counter_cy<6>  (
    .CI(Mcount_refresh_counter_cy[5]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<6>_rt_97 ),
    .O(Mcount_refresh_counter_cy[6])
  );
  XORCY   \Mcount_refresh_counter_xor<6>  (
    .CI(Mcount_refresh_counter_cy[5]),
    .LI(\Mcount_refresh_counter_cy<6>_rt_97 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_refresh_counter_cy<7>  (
    .CI(Mcount_refresh_counter_cy[6]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<7>_rt_98 ),
    .O(Mcount_refresh_counter_cy[7])
  );
  XORCY   \Mcount_refresh_counter_xor<7>  (
    .CI(Mcount_refresh_counter_cy[6]),
    .LI(\Mcount_refresh_counter_cy<7>_rt_98 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_refresh_counter_cy<8>  (
    .CI(Mcount_refresh_counter_cy[7]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<8>_rt_99 ),
    .O(Mcount_refresh_counter_cy[8])
  );
  XORCY   \Mcount_refresh_counter_xor<8>  (
    .CI(Mcount_refresh_counter_cy[7]),
    .LI(\Mcount_refresh_counter_cy<8>_rt_99 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_refresh_counter_cy<9>  (
    .CI(Mcount_refresh_counter_cy[8]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<9>_rt_100 ),
    .O(Mcount_refresh_counter_cy[9])
  );
  XORCY   \Mcount_refresh_counter_xor<9>  (
    .CI(Mcount_refresh_counter_cy[8]),
    .LI(\Mcount_refresh_counter_cy<9>_rt_100 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_refresh_counter_cy<10>  (
    .CI(Mcount_refresh_counter_cy[9]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<10>_rt_101 ),
    .O(Mcount_refresh_counter_cy[10])
  );
  XORCY   \Mcount_refresh_counter_xor<10>  (
    .CI(Mcount_refresh_counter_cy[9]),
    .LI(\Mcount_refresh_counter_cy<10>_rt_101 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_refresh_counter_cy<11>  (
    .CI(Mcount_refresh_counter_cy[10]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<11>_rt_102 ),
    .O(Mcount_refresh_counter_cy[11])
  );
  XORCY   \Mcount_refresh_counter_xor<11>  (
    .CI(Mcount_refresh_counter_cy[10]),
    .LI(\Mcount_refresh_counter_cy<11>_rt_102 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_refresh_counter_cy<12>  (
    .CI(Mcount_refresh_counter_cy[11]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<12>_rt_103 ),
    .O(Mcount_refresh_counter_cy[12])
  );
  XORCY   \Mcount_refresh_counter_xor<12>  (
    .CI(Mcount_refresh_counter_cy[11]),
    .LI(\Mcount_refresh_counter_cy<12>_rt_103 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_refresh_counter_cy<13>  (
    .CI(Mcount_refresh_counter_cy[12]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<13>_rt_104 ),
    .O(Mcount_refresh_counter_cy[13])
  );
  XORCY   \Mcount_refresh_counter_xor<13>  (
    .CI(Mcount_refresh_counter_cy[12]),
    .LI(\Mcount_refresh_counter_cy<13>_rt_104 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_refresh_counter_cy<14>  (
    .CI(Mcount_refresh_counter_cy[13]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<14>_rt_105 ),
    .O(Mcount_refresh_counter_cy[14])
  );
  XORCY   \Mcount_refresh_counter_xor<14>  (
    .CI(Mcount_refresh_counter_cy[13]),
    .LI(\Mcount_refresh_counter_cy<14>_rt_105 ),
    .O(Result[14])
  );
  MUXCY   \Mcount_refresh_counter_cy<15>  (
    .CI(Mcount_refresh_counter_cy[14]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<15>_rt_106 ),
    .O(Mcount_refresh_counter_cy[15])
  );
  XORCY   \Mcount_refresh_counter_xor<15>  (
    .CI(Mcount_refresh_counter_cy[14]),
    .LI(\Mcount_refresh_counter_cy<15>_rt_106 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_refresh_counter_cy<16>  (
    .CI(Mcount_refresh_counter_cy[15]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<16>_rt_107 ),
    .O(Mcount_refresh_counter_cy[16])
  );
  XORCY   \Mcount_refresh_counter_xor<16>  (
    .CI(Mcount_refresh_counter_cy[15]),
    .LI(\Mcount_refresh_counter_cy<16>_rt_107 ),
    .O(Result[16])
  );
  MUXCY   \Mcount_refresh_counter_cy<17>  (
    .CI(Mcount_refresh_counter_cy[16]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<17>_rt_108 ),
    .O(Mcount_refresh_counter_cy[17])
  );
  XORCY   \Mcount_refresh_counter_xor<17>  (
    .CI(Mcount_refresh_counter_cy[16]),
    .LI(\Mcount_refresh_counter_cy<17>_rt_108 ),
    .O(Result[17])
  );
  MUXCY   \Mcount_refresh_counter_cy<18>  (
    .CI(Mcount_refresh_counter_cy[17]),
    .DI(LED_out_0_OBUF_13),
    .S(\Mcount_refresh_counter_cy<18>_rt_109 ),
    .O(Mcount_refresh_counter_cy[18])
  );
  XORCY   \Mcount_refresh_counter_xor<18>  (
    .CI(Mcount_refresh_counter_cy[17]),
    .LI(\Mcount_refresh_counter_cy<18>_rt_109 ),
    .O(Result[18])
  );
  XORCY   \Mcount_refresh_counter_xor<19>  (
    .CI(Mcount_refresh_counter_cy[18]),
    .LI(\Mcount_refresh_counter_xor<19>_rt_110 ),
    .O(Result[19])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  Mram_Anode_Activate12 (
    .I0(refresh_counter[18]),
    .I1(refresh_counter[19]),
    .O(Anode_Activate_0_OBUF_11)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  Mram_Anode_Activate111 (
    .I0(refresh_counter[19]),
    .I1(refresh_counter[18]),
    .O(Anode_Activate_1_OBUF_10)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  Mram_Anode_Activate21 (
    .I0(refresh_counter[18]),
    .I1(refresh_counter[19]),
    .O(Anode_Activate_2_OBUF_9)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  Mram_Anode_Activate31 (
    .I0(refresh_counter[19]),
    .I1(refresh_counter[18]),
    .O(Anode_Activate_3_OBUF_8)
  );
  LUT5 #(
    .INIT ( 32'hE8484849 ))
  \pr_state_FSM_FFd1-In1  (
    .I0(pr_state_FSM_FFd4_33),
    .I1(pr_state_FSM_FFd1_5),
    .I2(crt_IBUF_2),
    .I3(pr_state_FSM_FFd3_7),
    .I4(pr_state_FSM_FFd2_6),
    .O(\pr_state_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'h6B2B6968 ))
  \pr_state_FSM_FFd3-In1  (
    .I0(pr_state_FSM_FFd3_7),
    .I1(pr_state_FSM_FFd4_33),
    .I2(crt_IBUF_2),
    .I3(pr_state_FSM_FFd2_6),
    .I4(pr_state_FSM_FFd1_5),
    .O(\pr_state_FSM_FFd3-In )
  );
  LUT5 #(
    .INIT ( 32'h6BAB6AA8 ))
  \pr_state_FSM_FFd2-In1  (
    .I0(pr_state_FSM_FFd2_6),
    .I1(pr_state_FSM_FFd4_33),
    .I2(crt_IBUF_2),
    .I3(pr_state_FSM_FFd3_7),
    .I4(pr_state_FSM_FFd1_5),
    .O(\pr_state_FSM_FFd2-In )
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  IBUF   crt_IBUF (
    .I(crt),
    .O(crt_IBUF_2)
  );
  OBUF   Anode_Activate_3_OBUF (
    .I(Anode_Activate_3_OBUF_8),
    .O(Anode_Activate[3])
  );
  OBUF   Anode_Activate_2_OBUF (
    .I(Anode_Activate_2_OBUF_9),
    .O(Anode_Activate[2])
  );
  OBUF   Anode_Activate_1_OBUF (
    .I(Anode_Activate_1_OBUF_10),
    .O(Anode_Activate[1])
  );
  OBUF   Anode_Activate_0_OBUF (
    .I(Anode_Activate_0_OBUF_11),
    .O(Anode_Activate[0])
  );
  OBUF   count_3_OBUF (
    .I(pr_state_FSM_FFd1_5),
    .O(count[3])
  );
  OBUF   count_2_OBUF (
    .I(pr_state_FSM_FFd2_6),
    .O(count[2])
  );
  OBUF   count_1_OBUF (
    .I(pr_state_FSM_FFd3_7),
    .O(count[1])
  );
  OBUF   count_0_OBUF (
    .I(pr_state_FSM_FFd4_33),
    .O(count[0])
  );
  OBUF   LED_out_6_OBUF (
    .I(LED_out_6_OBUF_12),
    .O(LED_out[6])
  );
  OBUF   LED_out_5_OBUF (
    .I(LED_out_0_OBUF_13),
    .O(LED_out[5])
  );
  OBUF   LED_out_4_OBUF (
    .I(LED_out_0_OBUF_13),
    .O(LED_out[4])
  );
  OBUF   LED_out_3_OBUF (
    .I(LED_out_0_OBUF_13),
    .O(LED_out[3])
  );
  OBUF   LED_out_2_OBUF (
    .I(LED_out_0_OBUF_13),
    .O(LED_out[2])
  );
  OBUF   LED_out_1_OBUF (
    .I(LED_out_0_OBUF_13),
    .O(LED_out[1])
  );
  OBUF   LED_out_0_OBUF (
    .I(LED_out_0_OBUF_13),
    .O(LED_out[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<1>_rt  (
    .I0(refresh_counter[1]),
    .O(\Mcount_refresh_counter_cy<1>_rt_92 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<2>_rt  (
    .I0(refresh_counter[2]),
    .O(\Mcount_refresh_counter_cy<2>_rt_93 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<3>_rt  (
    .I0(refresh_counter[3]),
    .O(\Mcount_refresh_counter_cy<3>_rt_94 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<4>_rt  (
    .I0(refresh_counter[4]),
    .O(\Mcount_refresh_counter_cy<4>_rt_95 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<5>_rt  (
    .I0(refresh_counter[5]),
    .O(\Mcount_refresh_counter_cy<5>_rt_96 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<6>_rt  (
    .I0(refresh_counter[6]),
    .O(\Mcount_refresh_counter_cy<6>_rt_97 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<7>_rt  (
    .I0(refresh_counter[7]),
    .O(\Mcount_refresh_counter_cy<7>_rt_98 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<8>_rt  (
    .I0(refresh_counter[8]),
    .O(\Mcount_refresh_counter_cy<8>_rt_99 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<9>_rt  (
    .I0(refresh_counter[9]),
    .O(\Mcount_refresh_counter_cy<9>_rt_100 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<10>_rt  (
    .I0(refresh_counter[10]),
    .O(\Mcount_refresh_counter_cy<10>_rt_101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<11>_rt  (
    .I0(refresh_counter[11]),
    .O(\Mcount_refresh_counter_cy<11>_rt_102 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<12>_rt  (
    .I0(refresh_counter[12]),
    .O(\Mcount_refresh_counter_cy<12>_rt_103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<13>_rt  (
    .I0(refresh_counter[13]),
    .O(\Mcount_refresh_counter_cy<13>_rt_104 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<14>_rt  (
    .I0(refresh_counter[14]),
    .O(\Mcount_refresh_counter_cy<14>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<15>_rt  (
    .I0(refresh_counter[15]),
    .O(\Mcount_refresh_counter_cy<15>_rt_106 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<16>_rt  (
    .I0(refresh_counter[16]),
    .O(\Mcount_refresh_counter_cy<16>_rt_107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<17>_rt  (
    .I0(refresh_counter[17]),
    .O(\Mcount_refresh_counter_cy<17>_rt_108 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_cy<18>_rt  (
    .I0(refresh_counter[18]),
    .O(\Mcount_refresh_counter_cy<18>_rt_109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_refresh_counter_xor<19>_rt  (
    .I0(refresh_counter[19]),
    .O(\Mcount_refresh_counter_xor<19>_rt_110 )
  );
  BUFGP   clock_100Mhz_BUFGP (
    .I(clock_100Mhz),
    .O(clock_100Mhz_BUFGP_0)
  );
  INV   \Mcount_refresh_counter_lut<0>_INV_0  (
    .I(pr_state_FSM_FFd4_33),
    .O(Mcount_refresh_counter_lut[0])
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

