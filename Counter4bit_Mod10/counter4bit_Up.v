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
module counter4bit_Mod10(clk, Reset, Output);
input wire clk, Reset;
output reg [3:0] Output = 4'b0000;
always @ (negedge clk or posedge Reset)
begin
	if (Reset)
		begin
			Output = 0;
		end
	else
		begin
		Output = Output+1'b1;
		if (Output > 4'b1000)
			begin
				Output = 4'b0000;
			end
		end
end

endmodule
