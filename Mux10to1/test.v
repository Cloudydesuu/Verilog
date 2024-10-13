`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:13:08 09/08/2024
// Design Name:   Mux10to1
// Module Name:   /home/ise/Mux10to1/test.v
// Project Name:  Mux10to1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux10to1
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
	reg [9:0] In;
	reg [3:0] sel;

	// Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	Mux10to1 uut (
		.In(In), 
		.sel(sel), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
      sel = 1;
		#100;
      sel = 2;
		#100;
      sel = 3;
		#100;
      sel = 4;
		#100;
      sel = 5;
		#100;
      sel = 6;
		#100;
      sel = 7;
		#100;
      sel = 8;
		#100;
      sel = 9;
		// Add stimulus here

	end
	always
		begin
			In = In + 1;
			#1;
		end
      
endmodule

