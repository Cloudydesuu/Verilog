`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:10 09/28/2024 
// Design Name: 
// Module Name:    counter4bit_Up 
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
module counter4bit_Up(clk, Reset, Output);
input wire clk, Reset;
output reg [3:0] Output = 4'b0000;
always @ (negedge clk or posedge Reset)
begin
	case (Reset)
		1: Output = 0;
		0:
			Output = Output+1'b1;
	endcase
end

endmodule
