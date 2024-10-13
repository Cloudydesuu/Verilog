`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:28:06 09/09/2024 
// Design Name: 
// Module Name:    FullAdder4bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FullAdder4bit(
	input [3:0] A, B,
	input c,
	output [4:0] Sum
    );
	wire  c0, c1, c2;
	FullAdder F1 (A[0], B[0], c, Sum[0], c0);
	FullAdder F2 (A[1], B[1], c0, Sum[1], c1);
	FullAdder F3 (A[2], B[2], c1, Sum[2], c2);
	FullAdder F4 (A[3], B[3], c2, Sum[3], Sum[4]);
endmodule
