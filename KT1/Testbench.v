`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:06:29 09/16/2024
// Design Name:   KT1
// Module Name:   /home/ise/KT1/Testbench.v
// Project Name:  KT1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: KT1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench;

	// Inputs
	reg E;
	reg A;
	reg B;
	reg [2:0] S;

	// Outputs
	wire [7:0] D;

	// Instantiate the Unit Under Test (UUT)
	KT1 uut (
		.E(E), 
		.A(A), 
		.B(B), 
		.S(S), 
		.D(D)
	);

	initial begin
		// Initialize Inputs
		E = 0;
		A = 0;
		B = 0;
		S = 0;
		#100;
		
        
		// Add stimulus here
		
		E = 0;
		A = 1;
		B = 0;
		S = 0;
		#100;
		
		E = 0;
		A = 0;
		B = 1;
		S = 0;
		#100;
		
		E = 1;
		A = 1;
		B = 0;
		S = 0;
		#100;
		
		A = 1;
		B = 0;
		S = 1;
		#100;
		
		
		
		A = 1;
		B = 0;
		S = 2;
		#100;
		
		
		A = 1;
		B = 0;
		S = 3;
		#100;
		
		
		A = 1;
		B = 0;
		S = 4;
		#100;
		
		
		A = 1;
		B = 0;
		S = 5;
		#100;
		
		
		A = 1;
		B = 0;
		S = 6;
		#100;
		
		
		A = 1;
		B = 0;
		S = 7;
		#100;
		
		
		A = 0;
		B = 1;
		S = 0;
		#100;
		
		
		A = 1;
		B = 1;
		S = 0;
		#100;

	end
      
endmodule

