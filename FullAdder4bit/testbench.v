`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:56:45 09/09/2024
// Design Name:   FullAdder4bit
// Module Name:   /home/ise/FullAdder4bit/testbench.v
// Project Name:  FullAdder4bit
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

module testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [4:0] Sum;

	// Instantiate the Unit Under Test (UUT)
	FullAdder4bit uut (
		.A(A), 
		.B(B), 
		.Sum(Sum)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		#100;
        
		// Add stimulus here
		
		A = 5;
		B = 5;
		#100;
		
		
		A = 15;
		B = 15;
		#100;

	end
      
endmodule

