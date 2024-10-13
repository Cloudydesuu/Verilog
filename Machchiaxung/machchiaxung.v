`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:33:33 09/28/2024 
// Design Name: 
// Module Name:    machchiaxung 
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
module machchiaxung(clk, reset, clk_Hz, SW );
input clk, reset, SW;
output clk_Hz;
reg clk_Hz ;
reg [27:0] cnt;
initial
	begin
		cnt <=1; clk_Hz<=0;
	end
always@(posedge reset or posedge clk)
begin
    if (reset == 1'b1)
        begin
            clk_Hz <= 0;
            cnt <= 0;
        end
	else
		begin
			if (SW==1)
			begin
				cnt <= cnt+1;
				if (cnt == 25_000_000)
				begin
					cnt <=0;
					clk_Hz <= ~clk_Hz;
				end
			end
			else
				begin
					cnt<=cnt+1;
					if (cnt==12_500_000)
					begin
						cnt<=0;
						clk_Hz<=~clk_Hz;
					end
				end
		end
end
endmodule

