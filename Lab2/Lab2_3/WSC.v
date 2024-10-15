// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 32-bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
// CREATED		"Sun Dec 03 16:36:26 2023"

module WSC(
	X,
	clk,
	rst_n,
	load,
	A,
	B,
	C,
	D,
	done,
	score
);


input wire	X;
input wire	clk;
input wire	rst_n;
input wire	load;
output wire	A;
output wire	B;
output wire	C;
output wire	D;
output wire	done;
output wire	[3:0] score;

wire	A_ALTERA_SYNTHESIZED;
wire	A_n;
wire	[3:0] add_1;
wire	B_ALTERA_SYNTHESIZED;
wire	B_n;
wire	C_ALTERA_SYNTHESIZED;
wire	C_n;
wire	[3:0] clr;
wire	D_ALTERA_SYNTHESIZED;
wire	D_n;
wire	[3:0] dec;
wire	decrease1;
wire	[3:0] inc3;
wire	increase3;
wire	[3:0] x_i;
wire	[3:0] x_n;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	[3:0] SYNTHESIZED_WIRE_26;
wire	[3:0] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_27;
wire	[3:0] SYNTHESIZED_WIRE_11;
wire	[4:0] SYNTHESIZED_WIRE_13;
wire	[3:0] SYNTHESIZED_WIRE_14;
wire	[3:0] SYNTHESIZED_WIRE_15;
wire	[3:0] SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_28;
wire	[3:0] SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;

assign	done = SYNTHESIZED_WIRE_27;
assign	score = SYNTHESIZED_WIRE_26;




xor_2	b2v_inst(
	.i1(X),
	.i2(SYNTHESIZED_WIRE_25),
	.o1(SYNTHESIZED_WIRE_17));


xor_2	b2v_inst1(
	.i1(A_ALTERA_SYNTHESIZED),
	.i2(B_ALTERA_SYNTHESIZED),
	.o1(SYNTHESIZED_WIRE_25));


DFF_1	b2v_inst10(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_1),
	
	.ClrN(rst_n),
	
	.Q(SYNTHESIZED_WIRE_27));


and_2	b2v_inst11(
	.i1(X),
	.i2(D_ALTERA_SYNTHESIZED),
	.o1(SYNTHESIZED_WIRE_5));


and_3	b2v_inst12(
	.i1(X),
	.i2(SYNTHESIZED_WIRE_2),
	.i3(D_ALTERA_SYNTHESIZED),
	.o1(SYNTHESIZED_WIRE_4));


not_1	b2v_inst13(
	.i1(X),
	.o1(SYNTHESIZED_WIRE_3));


not_1	b2v_inst14(
	.i1(C_ALTERA_SYNTHESIZED),
	.o1(SYNTHESIZED_WIRE_2));


or_2	b2v_inst15(
	.i1(SYNTHESIZED_WIRE_3),
	.i2(SYNTHESIZED_WIRE_4),
	.o1(SYNTHESIZED_WIRE_6));


DFF_1	b2v_inst16(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_5),
	
	.ClrN(rst_n),
	
	.Q(C_ALTERA_SYNTHESIZED));


DFF_1	b2v_inst17(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_6),
	
	.ClrN(rst_n),
	.QN(D_n),
	.Q(D_ALTERA_SYNTHESIZED));


FA4	b2v_inst18(
	.A(x_i),
	.B(SYNTHESIZED_WIRE_26),
	
	.S(SYNTHESIZED_WIRE_11));


FS4	b2v_inst19(
	.A(SYNTHESIZED_WIRE_26),
	.B(SYNTHESIZED_WIRE_9),
	.D(SYNTHESIZED_WIRE_13));


and_2	b2v_inst2(
	.i1(A_n),
	.i2(X),
	.o1(SYNTHESIZED_WIRE_28));


MUX4	b2v_inst20(
	.select(SYNTHESIZED_WIRE_27),
	.in0(SYNTHESIZED_WIRE_11),
	.in1(clr),
	.out(SYNTHESIZED_WIRE_15));


MUX4	b2v_inst21(
	.select(SYNTHESIZED_WIRE_27),
	.in0(SYNTHESIZED_WIRE_13[3:0]),
	.in1(clr),
	.out(SYNTHESIZED_WIRE_16));


DataReg	b2v_inst22(
	.clk(clk),
	.rst_n(rst_n),
	.D(SYNTHESIZED_WIRE_14),
	.Q(SYNTHESIZED_WIRE_26));


not_1	b2v_inst23(
	.i1(load),
	.o1(SYNTHESIZED_WIRE_1));


MUX4	b2v_inst24(
	.select(x_i[3]),
	.in0(SYNTHESIZED_WIRE_15),
	.in1(SYNTHESIZED_WIRE_16),
	.out(SYNTHESIZED_WIRE_14));


FA4	b2v_inst25(
	.A(x_n),
	.B(add_1),
	
	.S(SYNTHESIZED_WIRE_9));


not_1	b2v_inst26(
	.i1(x_i[3]),
	.o1(x_n[3]));


not_1	b2v_inst27(
	.i1(x_i[2]),
	.o1(x_n[2]));


not_1	b2v_inst28(
	.i1(x_i[1]),
	.o1(x_n[1]));


not_1	b2v_inst29(
	.i1(x_i[0]),
	.o1(x_n[0]));


and_2	b2v_inst3(
	.i1(SYNTHESIZED_WIRE_17),
	.i2(SYNTHESIZED_WIRE_18),
	.o1(SYNTHESIZED_WIRE_23));


gnd_1	b2v_inst30(
	.o1(add_1[3]));


gnd_1	b2v_inst31(
	.o1(add_1[2]));


gnd_1	b2v_inst32(
	.o1(add_1[1]));


vcc_1	b2v_inst33(
	.o1(add_1[0]));


gnd_1	b2v_inst34(
	.o1(clr[3]));


gnd_1	b2v_inst35(
	.o1(clr[2]));


gnd_1	b2v_inst36(
	.o1(clr[1]));


gnd_1	b2v_inst37(
	.o1(clr[0]));


gnd_1	b2v_inst38(
	.o1(inc3[3]));


gnd_1	b2v_inst39(
	.o1(inc3[2]));


or_2	b2v_inst4(
	.i1(SYNTHESIZED_WIRE_25),
	.i2(SYNTHESIZED_WIRE_28),
	.o1(SYNTHESIZED_WIRE_24));


vcc_1	b2v_inst40(
	.o1(dec[3]));


vcc_1	b2v_inst41(
	.o1(dec[2]));


vcc_1	b2v_inst42(
	.o1(dec[0]));


vcc_1	b2v_inst43(
	.o1(dec[1]));


vcc_1	b2v_inst44(
	.o1(inc3[1]));


vcc_1	b2v_inst45(
	.o1(inc3[0]));


MUX4	b2v_inst46(
	.select(increase3),
	.in0(clr),
	.in1(inc3),
	.out(SYNTHESIZED_WIRE_21));


MUX4	b2v_inst47(
	.select(decrease1),
	.in0(SYNTHESIZED_WIRE_21),
	.in1(dec),
	.out(x_i));


not_1	b2v_inst5(
	.i1(SYNTHESIZED_WIRE_28),
	.o1(SYNTHESIZED_WIRE_18));


DFF_1	b2v_inst6(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_23),
	
	.ClrN(rst_n),
	.QN(A_n),
	.Q(A_ALTERA_SYNTHESIZED));


DFF_1	b2v_inst7(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_24),
	
	.ClrN(rst_n),
	.QN(B_n),
	.Q(B_ALTERA_SYNTHESIZED));


and_2	b2v_inst8(
	.i1(A_ALTERA_SYNTHESIZED),
	.i2(B_n),
	.o1(increase3));


and_2	b2v_inst9(
	.i1(C_ALTERA_SYNTHESIZED),
	.i2(D_n),
	.o1(decrease1));

assign	A = A_ALTERA_SYNTHESIZED;
assign	B = B_ALTERA_SYNTHESIZED;
assign	C = C_ALTERA_SYNTHESIZED;
assign	D = D_ALTERA_SYNTHESIZED;

endmodule
