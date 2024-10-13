`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:59:36 09/28/2024 
// Design Name: 
// Module Name:    BlockReg8bShift 
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
module BlockReg8bShift(in,clk_50M,reset, out);
input clk_50M, reset, in;
output wire [7:0] out;
wire clk;
Clock Clock(clk_50M, reset, clk);
Reg8bShift Dich8b (clk,reset,in, out);


endmodule
