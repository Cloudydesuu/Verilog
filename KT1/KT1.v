`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:50:42 09/16/2024 
// Design Name: 
// Module Name:    KT1 
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
module KT1(
    input E,
    input A,
    input B,
    input [2:0] S,
    output reg [7:0] D
    );

	
	always @ (E,A,B,S)
	begin
		if (E==1)
			if (A==1 & B==0)
				case (S)
					0:D=8'b00000001;
					1:D=8'b00000010;
					2:D=8'b00000100;
					3:D=8'b00001000;
					4:D=8'b00010000;
					5:D=8'b00100000;
					6:D=8'b01000000;
					7:D=8'b10000000;
				endcase
			else if (A==0 & B==1)
				D = 8'b11001100;
			else
				D=8'b00000000;
				
		else
			D = 8'b00000000;
	end

endmodule
