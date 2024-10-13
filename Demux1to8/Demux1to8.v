`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:11 09/08/2024 
// Design Name: 
// Module Name:    Demux1to8 
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
module Demux1to8(
    input In, E,
    input [2:0] Sel,
    output reg [7:0] Out
    );
	always @ (Sel,In,E)
	begin
	case (E)
	0: Out=0;
	1:
			case (Sel)
				0: Out[0]=In;
				1: Out[1]=In;
				2: Out[2]=In;
				3: Out[3]=In;
				4: Out[4]=In;
				5: Out[5]=In;
				6: Out[6]=In;
				default: Out[7]=In;
			endcase
	endcase
	end

endmodule

