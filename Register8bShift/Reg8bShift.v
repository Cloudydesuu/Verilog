`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:57 09/28/2024 
// Design Name: 
// Module Name:    Reg8bShift 
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
module Reg8bShift(clk,reset,in,out);
input wire clk, reset,in;
output reg [7:0] out = 4'b0000;
always @ (negedge clk or posedge reset)
begin
	if (reset)
		begin
		out<=8'b00000000;
		end
	else
		begin
		out<={out[6:0],in};
		end
end
endmodule
