`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:29:43 09/28/2024
// Design Name:   Block_counter4bit_Up
// Module Name:   /home/ise/Counter4bit_Up/testbench.v
// Project Name:  Counter4bit_Up
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Block_counter4bit_Up
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg clk_50M;
	reg Reset;

	// Outputs
	wire [3:0] Output;

	// Instantiate the Unit Under Test (UUT)
	Block_counter4bit_Up uut (
		.clk_50M(clk_50M), 
		.Reset(Reset), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		clk_50M = 0;
		Reset = 0;

		forever #10 clk_50M = ~clk_50M;

	end

      
endmodule

