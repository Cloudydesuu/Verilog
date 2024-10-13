`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:42:08 09/28/2024
// Design Name:   Clock
// Module Name:   /home/ise/Counter4bit_Up/clocktestbench.v
// Project Name:  Counter4bit_Up
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clocktestbench;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire clk_1Hz;

	// Instantiate the Unit Under Test (UUT)
	Clock uut (
		.clk(clk), 
		.reset(reset), 
		.clk_1Hz(clk_1Hz)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		forever #10 clk <= ~clk;

	end
      
endmodule

