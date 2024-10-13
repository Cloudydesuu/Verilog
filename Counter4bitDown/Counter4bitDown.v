`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:36 09/28/2024 
// Design Name: 
// Module Name:    Counter4bitDown 
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

module counter4bit_Down(clk, Reset, Output);
input wire clk, Reset;
output reg [3:0] Output = 4'b1111;
always @ (negedge clk )
begin
	case (Reset)
		1: Output = Output-1'b1;
		0:
			Output = 4'b1111;
	endcase
end

endmodule

