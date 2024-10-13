`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:20:35 09/16/2024
// Design Name:   Kiemtra
// Module Name:   /home/ise/Kiemtra/test.v
// Project Name:  Kiemtra
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Kiemtra
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
	reg SW;
	reg [3:0] Sel;

	// Outputs
	wire [3:0] O;

	// Instantiate the Unit Under Test (UUT)
	Kiemtra uut (
		.SW(SW), 
		.Sel(Sel), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		SW = 0;
		Sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Sel = 1;
		#100;
		Sel = 2;
		#100;
		Sel = 3;
		
		
		
		#100;
		SW = 1;
		Sel = 4'b0001;
		#100;
		Sel = 4'b0010;
		#100;
		Sel = 4'b0100;
		#100;
		Sel = 4'b1000;
        
		// Add stimulus here

	end
      
endmodule

