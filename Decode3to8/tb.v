`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:53:45 10/12/2024
// Design Name:   Decode3to8
// Module Name:   /home/ise/Decode3to8/tb.v
// Project Name:  Decode3to8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decode3to8
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
	reg [2:0] In;

	// Outputs
	wire [7:0] Out;

	// Instantiate the Unit Under Test (UUT)
	Decode3to8 uut (
		.In(In), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In = 0;
		#100;
		In = 1;
		#100;
		In = 2;
		#100;
		In = 3;
		#100;
		In = 4;
		#100;
		In = 5;
		#100;
		In = 6;
		#100;
		In = 7;
		#100;
        
		// Add stimulus here

	end
      
endmodule

