`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:07:16 10/05/2024
// Design Name:   block_tm1638controller
// Module Name:   /home/ise/tm1638controller/tb.v
// Project Name:  tm1638controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: block_tm1638controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg clk_50M;
	reg reset;

	// Outputs
	wire dio;
	wire stb;
	wire sclk;
	wire [7:0] data;

	// Instantiate the Unit Under Test (UUT)
	block_tm1638controller uut (
		.clk_50M(clk_50M), 
		.reset(reset), 
		.dio(dio), 
		.stb(stb), 
		.sclk(sclk), 
		.data(data)
	);

	initial begin
		// Initialize Inputs
		clk_50M = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		forever #10 clk_50M = ~clk_50M;        
		// Add stimulus here

	end
	initial begin
   #1000;
	reset = 0;
	end
endmodule

