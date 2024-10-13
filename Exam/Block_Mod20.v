`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:37:41 10/03/2024 
// Design Name: 
// Module Name:    Block_Mod20 
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
module Block_Mod20(clk_50M, S0, S1, reset, Output);
input clk_50M, S0, S1, reset;
output wire [4:0] Output;
wire clk;
machchiaxung Clock (clk_50M, reset, clk, S1);
mod20 mod20 (clk, reset, Output, S0);

endmodule
