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
// CREATED		"Sat Dec 02 21:36:35 2023"

module AC4(
	clk,
	rst_n,
	load,
	x_i,
	done,
	sum_o
);


input wire	clk;
input wire	rst_n;
input wire	load;
input wire	[3:0] x_i;
output wire	done;
output wire	[3:0] sum_o;

wire	[3:0] add_1;
wire	[3:0] x_n;
wire	[3:0] SYNTHESIZED_WIRE_8;
wire	[3:0] SYNTHESIZED_WIRE_2;
wire	[3:0] SYNTHESIZED_WIRE_3;
wire	[4:0] SYNTHESIZED_WIRE_4;
wire	[3:0] SYNTHESIZED_WIRE_5;
wire	[3:0] SYNTHESIZED_WIRE_6;
wire	[3:0] SYNTHESIZED_WIRE_7;

assign	sum_o = SYNTHESIZED_WIRE_8;




FA4	b2v_inst(
	.A(x_i),
	.B(SYNTHESIZED_WIRE_8),
	
	.S(SYNTHESIZED_WIRE_3));


not_1	b2v_inst10(
	.i1(x_i[3]),
	.o1(x_n[3]));


not_1	b2v_inst11(
	.i1(x_i[2]),
	.o1(x_n[2]));


not_1	b2v_inst12(
	.i1(x_i[1]),
	.o1(x_n[1]));


not_1	b2v_inst13(
	.i1(x_i[0]),
	.o1(x_n[0]));


gnd_1	b2v_inst14(
	.o1(add_1[3]));


gnd_1	b2v_inst15(
	.o1(add_1[2]));


gnd_1	b2v_inst16(
	.o1(add_1[1]));


vcc_1	b2v_inst17(
	.o1(add_1[0]));


FS4	b2v_inst2(
	.A(SYNTHESIZED_WIRE_8),
	.B(SYNTHESIZED_WIRE_2),
	.D(SYNTHESIZED_WIRE_4));


MUX4	b2v_inst3(
	.select(load),
	.in0(SYNTHESIZED_WIRE_3),
	.in1(x_i),
	.out(SYNTHESIZED_WIRE_6));


MUX4	b2v_inst4(
	.select(load),
	.in0(SYNTHESIZED_WIRE_4[3:0]),
	.in1(x_i),
	.out(SYNTHESIZED_WIRE_7));


DataReg	b2v_inst6(
	.clk(clk),
	.rst_n(rst_n),
	.D(SYNTHESIZED_WIRE_5),
	.Q(SYNTHESIZED_WIRE_8));


Controller	b2v_inst7(
	.load(load),
	.clk(clk),
	.rst_n(rst_n),
	.done(done));


MUX4	b2v_inst8(
	.select(x_i[3]),
	.in0(SYNTHESIZED_WIRE_6),
	.in1(SYNTHESIZED_WIRE_7),
	.out(SYNTHESIZED_WIRE_5));


FA4	b2v_inst9(
	.A(x_n),
	.B(add_1),
	
	.S(SYNTHESIZED_WIRE_2));


endmodule
