`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:10:44 09/09/2024 
// Design Name: 
// Module Name:    Coder8to3 
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
module Coder8to3(
    input [7:0] D,
    output reg [2:0] S,
    input E
    );
always @ (E, D)
begin
	if (E==1)
		case (D)
		8'b00000001:S=0;
		8'b00000010:S=1;
		8'b00000100:S=2;
		8'b00001000:S=3;
		8'b00010000:S=4;
		8'b00100000:S=5;
		8'b01000000:S=6;
		8'b10000000:S=7;
		endcase
	else
		S=0;
end

endmodule
