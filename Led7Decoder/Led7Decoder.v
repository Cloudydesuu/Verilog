`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:19:42 09/09/2024 
// Design Name: 
// Module Name:    Led7Decoder 
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
module Led7Decoder(
    input [3:0] S,
    output reg [7:0] D
    );
always @(S)
	begin
	case (S)
		0:D=8'h3f;
		1:D=8'h06;
		2:D=8'h5b;
		3:D=8'h4f;
		4:D=8'h66;
		5:D=8'h6d;
		6:D=8'h7d;
		7:D=8'h07;
		8:D=8'h7f;
		9:D=8'h6f;
		10:D=8'h77;
		11:D=8'h7c;
		12:D=8'h39;
		13:D=8'h5e;
		14:D=8'h79;
		15:D=8'h71;
	endcase
	end
endmodule
