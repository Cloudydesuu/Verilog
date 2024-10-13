`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:03:05 10/12/2024
// Design Name:   Block_counter4bit_Down
// Module Name:   /home/ise/Counter4bitDown/tb.v
// Project Name:  Counter4bitDown
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Block_counter4bit_Down
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
	Block_counter4bit_Down uut (
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
		Reset = 1;
        
		// Add stimulus here

	end
   initial begin
	forever #10 clk_50M =~clk_50M;
	end
endmodule

