`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:13:50 09/28/2024 
// Design Name: 
// Module Name:    ledsangdantathet 
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
module ledsangdantathet(clk,reset,out);
input wire clk, reset;
output reg [7:0] out = 4'b0000;
always @ (negedge clk or posedge reset)
begin
	if (reset)
		begin
		out<=8'b00000000;
		end
	else
		begin
			if (out==8'b11111111)
				begin
					out<=8'b00000000;
				end
			else
				begin
					out<={out[6:0],1'b1};
				end	
		end
end
endmodule
