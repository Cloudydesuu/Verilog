`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:59:04 10/12/2024
// Design Name:   Mux4to1
// Module Name:   /home/ise/Mux4to1/tb.v
// Project Name:  Mux4to1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux4to1
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
	reg [3:0] In;
	reg [1:0] sel;

	// Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	Mux4to1 uut (
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
		sel=1;
		#100;
		sel=2;
		#100;
		sel=3;
        
		// Add stimulus here

	end
   always begin
		In = ~In;
		#10;
endmodule

