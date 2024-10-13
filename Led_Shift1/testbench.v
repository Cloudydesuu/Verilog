`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:25:53 09/28/2024
// Design Name:   Blockledsangdantatdan
// Module Name:   /home/ise/Led_Shift1/testbench.v
// Project Name:  Led_Shift1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Blockledsangdantatdan
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
	reg reset;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	Blockledsangdantatdan uut (
		.clk_50M(clk_50M), 
		.reset(reset), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk_50M = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		forever #1 clk_50M = ~clk_50M;
        
		// Add stimulus here

	end
      
endmodule

