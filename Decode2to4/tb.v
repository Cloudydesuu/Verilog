`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:44:39 10/12/2024
// Design Name:   Mux2to4
// Module Name:   /home/ise/Decode2to4/tb.v
// Project Name:  Mux2to4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux2to4
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
	reg [1:0] In;

	// Outputs
	wire [3:0] Out;

	// Instantiate the Unit Under Test (UUT)
	Mux2to4 uut (
		.In(In), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In = 0;

		// Wait 100 ns for global reset to finish
		#100;
		In = 1;
		#100;
		In = 2;
		#100;
		In = 3;
        
		// Add stimulus here

	end
      
endmodule

