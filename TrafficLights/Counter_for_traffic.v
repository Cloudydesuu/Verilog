`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:44:48 10/12/2024 
// Design Name: 
// Module Name:    Counter_for_traffic 
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
module counter_for_traffic(clk2, reset, light_chuc1, light_dv1, light_chuc2, light_dv2, light1, light2);
input clk2, reset;
output reg [3:0] light_chuc1=0, light_dv1=0, light_chuc2= 0, light_dv2 = 0;
output reg [1:0] light1=0, light2 = 0;
reg [5:0] o = 0;
reg [3:0] o_sub = 0;
reg flag = 0;

initial begin
	flag = 1;
end
always @ (posedge clk2 or posedge reset) begin
	if (reset) begin 
		o=20; flag =1;
	end
	else begin
		if (flag == 1) begin
			if (o > 5) begin
				light1 = 1; light2 = 3;
				if (o>=20) begin light_chuc1 = 2; light_dv1= o-20; end
				else if (o>=10) begin light_chuc1 = 1; light_dv1= o-10; end
				else begin light_chuc1 = 0; light_dv1= o; end
				o_sub = o - 5;
				if (o_sub>=10) begin light_chuc2 = 1; light_dv2= o_sub - 10; end
				else begin light_chuc2 = 0; light_dv2= o_sub; end
			end
			else if (o>0) begin
				light1 = 1; light2 = 2;
				light_chuc1 = 0; light_dv1 = o;
				light_chuc2 = 0; light_dv2 = o;
			end
			else begin
				light_chuc1 = 0; light_dv1 = 0;
				light_chuc2 = 0; light_dv2 = 0;
			end
		end
		if (flag == 0) begin
			if (o > 5) begin
				light1 = 3; light2 = 1;
				if (o>=20) begin light_chuc2 = 2; light_dv2= o-20; end
				else if (o>=10) begin light_chuc2 = 1; light_dv2= o-10; end
				else begin light_chuc2 = 0; light_dv2= o; end
				o_sub = o - 5;
				if (o_sub>=10) begin light_chuc1 = 1; light_dv1= o_sub - 10; end
				else begin light_chuc1 = 0; light_dv1= o_sub; end
			end
			else if (o>0) begin
				light1 = 2; light2 = 1;
				light_chuc1 = 0; light_dv1 = o;
				light_chuc2 = 0; light_dv2 = o;
			end
			else begin
				light_chuc1 = 0; light_dv1 = 0;
				light_chuc2 = 0; light_dv2 = 0;
			end
		end
		if ( o == 0) begin o = 21; flag =  ~flag; end
		o = o - 1;
	end
end
endmodule

