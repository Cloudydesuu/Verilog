`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:11:05 09/28/2024 
// Design Name: 
// Module Name:    counter4bit 
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
module counter4bit(clk, Reset, Output,Mode,SW);
input wire clk, Reset,Mode,SW;
output reg [3:0] Output = 4'b0000;
reg direction = 0;
always @ (negedge clk or posedge Reset)
begin
	if (Reset)
		begin
			Output = 0; direction = 0;
		end
	else
		begin
			if (Mode)
				begin
					if (direction == 0)
						begin
							if (Output == 4'b1110) begin direction = 1; end
							Output = Output +1'b1;
						end
					else
						begin
							if (Output == 4'b0001) begin direction = 0; end
							Output = Output -1'b1;
						end
				end
			else
				begin
					if (SW)
						begin
							Output = Output +1'b1;
						end
					else
						begin
							Output = Output -1'b1;
						end
				end
		end
end
endmodule
