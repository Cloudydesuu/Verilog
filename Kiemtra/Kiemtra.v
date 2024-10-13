`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:15:31 09/16/2024 
// Design Name: 
// Module Name:    Kiemtra 
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
module Kiemtra(
    input SW,
    input [3:0] Sel ,
    output reg [3:0] O
    );
	always @(SW,Sel)
	begin
	if (SW==0)
		case (Sel)
			0:O=4'b0001;
			1:O=4'b0010;
			2:O=4'b0100;
			3:O=4'b1000;
		endcase
	else
		case (Sel)
			4'b0001:O=0;
			4'b0010:O=1;
			4'b0100:O=2;
			4'b1000:O=3;
		endcase
	end
	

endmodule
