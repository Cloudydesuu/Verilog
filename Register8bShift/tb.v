`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:44:10 10/12/2024
// Design Name:   BlockReg8bShift
// Module Name:   /home/ise/Register8bShift/tb.v
// Project Name:  Register8bShift
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BlockReg8bShift
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
	reg in;
	reg clk_50M;
	reg reset;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	BlockReg8bShift uut (
		.in(in), 
		.clk_50M(clk_50M), 
		.reset(reset), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		clk_50M = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in= 1;
		#1000;
		in=0;
        
		// Add stimulus here

	end
	initial begin
	forever #1 clk_50M = ~clk_50M;
     end
endmodule

