`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:54:49 09/09/2024
// Design Name:   Mux4to1
// Module Name:   /home/ise/Mux4to1/test.v
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

module test;

	// Inputs
	reg [4:0] In;
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
        
		// Add stimulus here

	end
	always
	begin
	In = In + 1;
	#10;
	end
	always
	begin
	sel = 0 ;
	#1000;
	sel = 1;
	#1000;
	sel =2; 
	#1000;
	sel = 3;
	#1000;
	end
      
endmodule

