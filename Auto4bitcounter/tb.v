`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:28:50 10/12/2024
// Design Name:   Block_counter4bit
// Module Name:   /home/ise/Auto4bitcounter/tb.v
// Project Name:  Auto4bitcounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Block_counter4bit
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
	reg Mode;
	reg SW;

	// Outputs
	wire [3:0] Output;

	// Instantiate the Unit Under Test (UUT)
	Block_counter4bit uut (
		.clk_50M(clk_50M), 
		.Reset(Reset), 
		.Output(Output), 
		.Mode(Mode), 
		.SW(SW)
	);

	initial begin
		// Initialize Inputs
		clk_50M = 0;
		Reset = 0;
		Mode = 1;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#20000;
		Mode =0;
		#1000;
		SW=1;
		
        
		// Add stimulus here

	end
	initial begin
	forever #1 clk_50M = ~clk_50M;
     end
endmodule

