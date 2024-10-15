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
// CREATED		"Sat Dec 02 21:38:50 2023"

module FA4(
	A,
	B,
	Co,
	S
);


input wire	[3:0] A;
input wire	[3:0] B;
output wire	Co;
output wire	[3:0] S;

wire	[3:0] S_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;





FA1	b2v_inst(
	.Ci(SYNTHESIZED_WIRE_0),
	.A(A[3]),
	.B(B[3]),
	.S(S_ALTERA_SYNTHESIZED[3]),
	.Co(Co));


FA1	b2v_inst1(
	.Ci(SYNTHESIZED_WIRE_1),
	.A(A[2]),
	.B(B[2]),
	.S(S_ALTERA_SYNTHESIZED[2]),
	.Co(SYNTHESIZED_WIRE_0));


FA1	b2v_inst2(
	.Ci(SYNTHESIZED_WIRE_2),
	.A(A[1]),
	.B(B[1]),
	.S(S_ALTERA_SYNTHESIZED[1]),
	.Co(SYNTHESIZED_WIRE_1));


FA1	b2v_inst3(
	.Ci(SYNTHESIZED_WIRE_3),
	.A(A[0]),
	.B(B[0]),
	.S(S_ALTERA_SYNTHESIZED[0]),
	.Co(SYNTHESIZED_WIRE_2));


gnd_1	b2v_inst4(
	.o1(SYNTHESIZED_WIRE_3));

assign	S = S_ALTERA_SYNTHESIZED;

endmodule
