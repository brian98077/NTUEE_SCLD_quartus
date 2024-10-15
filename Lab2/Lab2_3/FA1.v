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
// CREATED		"Sat Dec 02 21:38:40 2023"

module FA1(
	A,
	B,
	Ci,
	S,
	Co
);


input wire	A;
input wire	B;
input wire	Ci;
output wire	S;
output wire	Co;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_4;





xor_2	b2v_inst(
	.i1(A),
	.i2(B),
	.o1(SYNTHESIZED_WIRE_4));


or_2	b2v_inst2(
	.i1(SYNTHESIZED_WIRE_0),
	.i2(SYNTHESIZED_WIRE_1),
	.o1(Co));


xor_2	b2v_inst4(
	.i1(SYNTHESIZED_WIRE_4),
	.i2(Ci),
	.o1(S));


and_2	b2v_inst5(
	.i1(SYNTHESIZED_WIRE_4),
	.i2(Ci),
	.o1(SYNTHESIZED_WIRE_0));


and_2	b2v_inst6(
	.i1(A),
	.i2(B),
	.o1(SYNTHESIZED_WIRE_1));


endmodule
