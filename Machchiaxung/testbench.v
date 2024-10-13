`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:55:46 09/28/2024
// Design Name:   machchiaxung
// Module Name:   /home/ise/Machchiaxung/testbench.v
// Project Name:  Machchiaxung
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: machchiaxung
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg clk;
	reg reset;
	reg SW;

	// Outputs
	wire clk_Hz;

	// Instantiate the Unit Under Test (UUT)
	machchiaxung uut (
		.clk(clk), 
		.reset(reset), 
		.clk_Hz(clk_Hz), 
		.SW(SW)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		forever #10 clk = ~clk;
	end
	initial begin
		SW =0;
		#1000000000
		SW =1;
	end

      
endmodule

