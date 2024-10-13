`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:29:17 09/09/2024
// Design Name:   Led7Decoder
// Module Name:   /home/ise/Led7Decoder/test.v
// Project Name:  Led7Decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Led7Decoder
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
	reg [3:0] S;

	// Outputs
	wire [7:0] D;

	// Instantiate the Unit Under Test (UUT)
	Led7Decoder uut (
		.S(S), 
		.D(D)
	);

	initial begin
		// Initialize Inputs
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always
	begin
	S = S+1;
	#100;
	end
	
endmodule

