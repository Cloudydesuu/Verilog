`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:45:43 09/28/2024 
// Design Name: 
// Module Name:    Block_LedShift 
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
module Block_LedShift(clk_50M, reset, out);
input clk_50M, reset;
output wire [7:0] out;
wire clk;
Clock Clock(clk_50M, reset, clk);
ledsangdantatdan ledmode (clk,reset, out);

endmodule


