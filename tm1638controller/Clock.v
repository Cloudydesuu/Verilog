`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:33:47 10/05/2024 
// Design Name: 
// Module Name:    Clock 
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
module Clock(clk, reset, clk_Hz);
input clk, reset;
output clk_Hz;


reg clk_Hz;
reg [24:0] counter;
initial
begin
	counter <= 0; clk_Hz <= 0;
end

always@(posedge reset or posedge clk)
begin
    if (reset == 1'b1)
        begin
            clk_Hz <= 0;
            counter <= 0;
        end
    else
        begin
            counter <= counter + 1;
            if ( counter == 25)
                begin
                    counter <= 0;
                    clk_Hz <= ~clk_Hz;
                end
        end
end
endmodule   
