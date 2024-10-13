`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:46:14 09/28/2024 
// Design Name: 
// Module Name:    BlockCounter4bitDown 
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
module Block_counter4bit_Down(clk_50M, Reset, Output);
input clk_50M, Reset;
output wire [3:0] Output;
wire clk;
Clock Clock_1Hz(clk_50M, Reset, clk);
counter4bit_Down counter4bitdown (clk, Reset, Output);
endmodule

