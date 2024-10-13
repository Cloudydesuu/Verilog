`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:43:52 10/03/2024
// Design Name:   Block_Mod20
// Module Name:   /home/ise/Exam/testbench.v
// Project Name:  Exam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Block_Mod20
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
	reg S0;
	reg S1;
	reg reset;

	// Outputs
	wire [4:0] Output;

	// Instantiate the Unit Under Test (UUT)
	Block_Mod20 uut (
		.clk_50M(clk_50M), 
		.S0(S0), 
		.S1(S1), 
		.reset(reset), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		clk_50M = 0;
		S0 = 1;
		S1 = 0;
		reset = 0;
		forever #10 clk_50M = ~clk_50M;

	end
	initial begin
		reset = 1;
		#10;
		reset = 0;
	end
      
endmodule

