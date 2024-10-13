`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:38:34 09/09/2024
// Design Name:   Coder8to3
// Module Name:   /home/ise/Coder8to3/test.v
// Project Name:  Coder8to3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Coder8to3
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
	reg [7:0] D;

	// Outputs
	wire [3:0] S;

	// Instantiate the Unit Under Test (UUT)
	Coder3to8 uut (
		.D(D), 
		.S(S)
	);

	initial begin
		// Initialize Inputs
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always
	begin
		D=8'b00000001;
		#100;
		D=8'b00000010;
		#100;
		D=8'b00000100;
		#100;
		D=8'b00001000;
		#100;
		D=8'b00010000;
		#100;
		D=8'b00100000;
		#100;
		D=8'b01000000;
		#100;
		D=8'b10000000;
		#100;
	end
endmodule

