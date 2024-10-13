`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:41 09/08/2024 
// Design Name: 
// Module Name:    Mux10to1 
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
module Mux10to1(
    input [9:0] In,
	 input [3:0] sel,
	 output reg Out
    );
always @ (In, sel)
begin
	case (sel)
	0:Out=In[0];
	1:Out=In[1];
	2:Out=In[2];
	3:Out=In[3];
	4:Out=In[4];
	5:Out=In[5];
	6:Out=In[6];
	7:Out=In[7];
	8:Out=In[8];
	9:Out=In[9];
	endcase
end


endmodule
