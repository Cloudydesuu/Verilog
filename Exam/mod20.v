`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:29:55 10/03/2024 
// Design Name: 
// Module Name:    mod20 
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
module mod20(clk, Reset, Output, S0);
input wire clk, Reset, S0;
output reg [4:0] Output = 5'b00000;
always @ (negedge clk or posedge Reset)
begin
	if (Reset)
		begin
			Output = 0;
		end
	else
		begin
			if (S0==0) begin
				if (Output == 5'b10100) begin
					Output = 4'b0000;
				end
				Output = Output + 1'b1;
			end
			else begin
				if (Output == 5'b00000) begin
					Output = 5'b10100;
				end
				Output = Output - 1'b1;
			end
		end
end
endmodule
