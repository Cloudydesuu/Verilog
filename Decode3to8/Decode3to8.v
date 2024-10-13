`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:08:54 09/09/2024 
// Design Name: 
// Module Name:    Decode3to8 
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
module Decode3to8(
    input [2:0] In,
    output reg [7:0] Out
    );
always @ (In)
	begin
		case (In)
		0: Out = 8'b00000001;
		1: Out = 8'b00000010;
		2: Out = 8'b00000100;
		3: Out = 8'b00001000;
		4: Out = 8'b00010000;
		5: Out = 8'b00100000;
		6: Out = 8'b01000000;
		7: Out = 8'b10000000;
		endcase
	end

endmodule
