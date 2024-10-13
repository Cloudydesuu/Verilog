`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:46:57 08/26/2024
// Design Name:   FullAdder
// Module Name:   /home/ise/Adder/FA_tb.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FA_tb;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	FullAdder uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		A = 1;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		A = 0;
		B = 1;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		
		
		A = 1;
		B = 1;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		A = 0;
		B = 0;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		
		A = 1;
		B = 0;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		
		
		A = 0;
		B = 1;
		Cin =10;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		
		A = 1;
		B = 1;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here

	end
      
endmodule

