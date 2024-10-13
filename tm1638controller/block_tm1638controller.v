`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:37:23 10/05/2024 
// Design Name: 
// Module Name:    block_tm1638controller 
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
module block_tm1638controller(clk_50M, reset, dio, stb, sclk, data);
input clk_50M, reset;
wire clk_Hz;
output wire dio, stb, sclk;
output wire [7:0] data;
Clock Clock(clk_50M, reset, clk_Hz);
tm1638_controller tm1638(clk_Hz, dio, stb, reset, sclk, data);


endmodule
