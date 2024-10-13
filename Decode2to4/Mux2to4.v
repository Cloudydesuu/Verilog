`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:58:29 09/09/2024 
// Design Name: 
// Module Name:    Mux2to4 
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
module Mux2to4(
    input [1:0] In,
    output reg [3:0] Out
    ); 
always @ (In)
	begin
		case (In)
		0: Out = 4'b0001;
		1: Out = 4'b0010;
		2: Out = 4'b0100;
		3: Out = 4'b1000;
		endcase
	end

endmodule
