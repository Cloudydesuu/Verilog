`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:43:59 10/05/2024
// Design Name:   tm1638_controller
// Module Name:   /home/ise/tm1638controller/tm1638_tb.v
// Project Name:  tm1638controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tm1638_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tm1638_tb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire dio;
	wire stb;
	wire sclk;
	wire data_check;

	// Instantiate the Unit Under Test (UUT)
	tm1638_controller uut (
		.clk(clk), 
		.dio(dio), 
		.stb(stb), 
		.reset(reset),
		.sclk(sclk),
		.data_check(data_check)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		forever #10 clk = ~clk;
        
		// Add stimulus here

	end
      
endmodule

