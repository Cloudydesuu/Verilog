`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:16:36 09/28/2024 
// Design Name: 
// Module Name:    Blockcounter4bit 
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
module Block_counter4bit(clk_50M, Reset, Output, Mode, SW);
input clk_50M, Reset, Mode, SW;
output wire [3:0] Output;
wire clk, Mode, SW;
Clock Clock(clk_50M, Reset, clk);
counter4bit counter4bit (clk, Reset, Output,Mode,SW);
endmodule
