`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:35:48 09/08/2024
// Design Name:   Demux1to8
// Module Name:   /home/ise/Demux1to8/test.v
// Project Name:  Demux1to8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Demux1to8
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
	reg In, E;
	reg [2:0] Sel;

	// Outputs
	wire [7:0] Out;

	// Instantiate the Unit Under Test (UUT)
	Demux1to8 uut (
		.E(E),
		.In(In), 
		.Sel(Sel), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In = 1;
		Sel = 1;
		E=0;
		// Wait 100 ns for global reset to finish
		#500;
		E = 1;

		// Add stimulus here

	end
	always
		begin
		In=~In;
		#10;
	end
	always
		begin
		Sel = Sel+1;
		#100;
     end
endmodule

