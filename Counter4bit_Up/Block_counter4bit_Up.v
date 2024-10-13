`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:23:40 09/28/2024 
// Design Name: 
// Module Name:    Block_counter4bit_Up 
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
module Block_counter4bit_Up(clk_50M, Reset, Output);
input clk_50M, Reset;
output wire [3:0] Output;
wire clk;
Clock Clock_1Hz(clk_50M, Reset, clk);
counter4bit_Up counter4bitup (clk, Reset, Output);
endmodule
