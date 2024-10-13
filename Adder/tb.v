`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:36:39 10/12/2024
// Design Name:   FullAdder4bit
// Module Name:   /home/ise/Adder/tb.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullAdder4bit
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
	reg [3:0] A;
	reg [3:0] B;
	reg c;

	// Outputs
	wire [4:0] Sum;

	// Instantiate the Unit Under Test (UUT)
	FullAdder4bit uut (
		.A(A), 
		.B(B), 
		.c(c), 
		.Sum(Sum)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A = 1;
		B = 0;
		c = 0;
		#100;
		
		#100;
		A = 0;
		B = 1;
		c = 0;
		#100;
		#100;
		A = 0;
		B = 0;
		c = 1;
		#100;
		#100;
		A = 1;
		B = 1;
		c = 1;
		#100;
		#100;
		A = 5;
		B = 3;
		c = 0;
		#100;
		A = 4;
		B = 5;
		c = 1;
		#100;
		#100;
		A = 15;
		B = 15;
		c = 1;
		#100;
        
		// Add stimulus here

	end
      
endmodule

