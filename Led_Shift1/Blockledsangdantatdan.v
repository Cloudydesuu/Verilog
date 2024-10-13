`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:18:08 09/28/2024 
// Design Name: 
// Module Name:    Blockledsangdantatdan 
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
module Blockledsangdantatdan(clk_50M, reset,out);
input clk_50M, reset;
output wire [7:0] out;
wire clk;
Clock Clock(clk_50M, reset, clk);
ledsangdantathet ledmode (clk,reset, out);

endmodule
