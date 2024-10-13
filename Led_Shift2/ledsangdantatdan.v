`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:46 09/28/2024 
// Design Name: 
// Module Name:    ledsangdantatdan 
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
module ledsangdantatdan(clk,reset,out);
input wire clk, reset;
output reg [7:0] out = 4'b0000;
reg direct=0 ;
always @ (negedge clk or posedge reset)
begin
	if (reset)
		begin
			out<=8'b00000000; direct =0;
		end
	else
		begin
			if (direct == 0)
				begin
					if (out==8'b01111111) begin direct = 1; end
					out<={out[6:0],1'b1};
				end
			else
				begin
					if (out==8'b10000000) begin direct = 0; end
					out<={out[6:0],1'b0};
				end
		end
end
endmodule
