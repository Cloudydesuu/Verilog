`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:09 09/28/2024 
// Design Name: 
// Module Name:    Clock_1Hz 
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
module Clock(clk, reset, clk_1Hz);
input clk, reset;
output clk_1Hz;


reg clk_1Hz;
reg [27:0] counter;
initial
begin
	counter <= 0; clk_1Hz <= 0;
end

always@(posedge clk or negedge reset)
begin
    if (reset == 1'b0)
        begin
            clk_1Hz <= 0;
            counter <= 0;
        end
    else
        begin
            counter <= counter + 1;
            if ( counter == 25)
                begin
                    counter <= 0;
                    clk_1Hz <= ~clk_1Hz;
                end
        end
end
endmodule   
