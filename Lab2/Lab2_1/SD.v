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
// CREATED		"Sat Dec 02 18:24:08 2023"

module SD(
	X,
	clk,
	rst_n,
	A,
	B,
	C,
	D,
	Z
);


input wire	X;
input wire	clk;
input wire	rst_n;
output wire	A;
output wire	B;
output wire	C;
output wire	D;
output wire	Z;

wire	A_ALTERA_SYNTHESIZED;
wire	A_n;
wire	B_ALTERA_SYNTHESIZED;
wire	B_n;
wire	C_ALTERA_SYNTHESIZED;
wire	C_n;
wire	D_ALTERA_SYNTHESIZED;
wire	D_n;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;





xor_2	b2v_inst(
	.i1(X),
	.i2(SYNTHESIZED_WIRE_15),
	.o1(SYNTHESIZED_WIRE_8));


xor_2	b2v_inst1(
	.i1(A_ALTERA_SYNTHESIZED),
	.i2(B_ALTERA_SYNTHESIZED),
	.o1(SYNTHESIZED_WIRE_15));


or_2	b2v_inst10(
	.i1(SYNTHESIZED_WIRE_1),
	.i2(SYNTHESIZED_WIRE_2),
	.o1(Z));


and_2	b2v_inst11(
	.i1(X),
	.i2(D_ALTERA_SYNTHESIZED),
	.o1(SYNTHESIZED_WIRE_6));


and_3	b2v_inst12(
	.i1(X),
	.i2(SYNTHESIZED_WIRE_3),
	.i3(D_ALTERA_SYNTHESIZED),
	.o1(SYNTHESIZED_WIRE_5));


not_1	b2v_inst13(
	.i1(X),
	.o1(SYNTHESIZED_WIRE_4));


not_1	b2v_inst14(
	.i1(C_ALTERA_SYNTHESIZED),
	.o1(SYNTHESIZED_WIRE_3));


or_2	b2v_inst15(
	.i1(SYNTHESIZED_WIRE_4),
	.i2(SYNTHESIZED_WIRE_5),
	.o1(SYNTHESIZED_WIRE_7));


DFF_1	b2v_inst16(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_6),
	
	.ClrN(rst_n),
	
	.Q(C_ALTERA_SYNTHESIZED));


DFF_1	b2v_inst17(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_7),
	
	.ClrN(rst_n),
	.QN(D_n),
	.Q(D_ALTERA_SYNTHESIZED));


and_2	b2v_inst2(
	.i1(A_n),
	.i2(X),
	.o1(SYNTHESIZED_WIRE_16));


and_2	b2v_inst3(
	.i1(SYNTHESIZED_WIRE_8),
	.i2(SYNTHESIZED_WIRE_9),
	.o1(SYNTHESIZED_WIRE_13));


or_2	b2v_inst4(
	.i1(SYNTHESIZED_WIRE_15),
	.i2(SYNTHESIZED_WIRE_16),
	.o1(SYNTHESIZED_WIRE_14));


not_1	b2v_inst5(
	.i1(SYNTHESIZED_WIRE_16),
	.o1(SYNTHESIZED_WIRE_9));


DFF_1	b2v_inst6(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_13),
	
	.ClrN(rst_n),
	.QN(A_n),
	.Q(A_ALTERA_SYNTHESIZED));


DFF_1	b2v_inst7(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_14),
	
	.ClrN(rst_n),
	.QN(B_n),
	.Q(B_ALTERA_SYNTHESIZED));


and_2	b2v_inst8(
	.i1(A_ALTERA_SYNTHESIZED),
	.i2(B_n),
	.o1(SYNTHESIZED_WIRE_1));


and_2	b2v_inst9(
	.i1(C_ALTERA_SYNTHESIZED),
	.i2(D_n),
	.o1(SYNTHESIZED_WIRE_2));

assign	A = A_ALTERA_SYNTHESIZED;
assign	B = B_ALTERA_SYNTHESIZED;
assign	C = C_ALTERA_SYNTHESIZED;
assign	D = D_ALTERA_SYNTHESIZED;

endmodule
