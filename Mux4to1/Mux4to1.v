`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:52:30 09/09/2024 
// Design Name: 
// Module Name:    Mux4to1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux4to1(
    input [3:0] In,
    input [1:0] sel,
    output reg Out
    );
always @ (sel, In)
	begin 
	case (sel)
		0: Out = In[0];
		1: Out = In[1];
		2: Out = In[2];
		default: Out = In[3];
	endcase
	end

endmodule
