`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:56:43 09/28/2024
// Design Name:   counter4bit_Up
// Module Name:   /home/ise/Counter4bit_Up/countertestbench.v
// Project Name:  Counter4bit_Up
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter4bit_Up
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module countertestbench;

	// Inputs
	reg clk;
	reg Reset;

	// Outputs
	wire [3:0] Output;

	// Instantiate the Unit Under Test (UUT)
	counter4bit_Up uut (
		.clk(clk), 
		.Reset(Reset), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		Reset = 0;

		// Wait 100 ns for global reset to finish
		forever #10 clk = ~clk;
        
		// Add stimulus here

	end
      
endmodule

