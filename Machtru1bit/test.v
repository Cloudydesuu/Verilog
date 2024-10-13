`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:05:30 09/16/2024
// Design Name:   full_subtractor
// Module Name:   /home/ise/Machtru1bit/test.v
// Project Name:  Machtru1bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg a;
	reg b;
	reg Bin;

	// Outputs
	wire D;
	wire Bout;

	// Instantiate the Unit Under Test (UUT)
	full_subtractor uut (
		.a(a), 
		.b(b), 
		.Bin(Bin), 
		.D(D), 
		.Bout(Bout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		Bin = 0;

		// Wait 100 ns for global reset to finish
		#100;
      a = 0;
		b = 1;
		
		#100;
      a = 1;
		b = 0;
		// Add stimulus here
		#100;
      a = 1;
		b = 1;
		
		#100;
		Bin = 1;
      a = 0;
		b = 1;
	end
      
endmodule

