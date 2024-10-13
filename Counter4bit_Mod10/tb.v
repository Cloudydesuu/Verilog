`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:15:08 10/12/2024
// Design Name:   Block_counter4bit_Mod10
// Module Name:   /home/ise/Counter4bit_Mod10/tb.v
// Project Name:  Counter4bit_Up
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Block_counter4bit_Mod10
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
	reg Reset;

	// Outputs
	wire [3:0] Output;

	// Instantiate the Unit Under Test (UUT)
	Block_counter4bit_Mod10 uut (
		.clk_50M(clk_50M), 
		.Reset(Reset), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		clk_50M = 0;
		Reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
       forever #10 clk_50M = ~clk_50M;
		// Add stimulus here

	end
      
endmodule

