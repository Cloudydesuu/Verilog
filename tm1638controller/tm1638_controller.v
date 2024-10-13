`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:00 10/05/2024 
// Design Name: 
// Module Name:    tm1638_controller 
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
module tm1638_controller(clk, dio, stb, reset, sclk, data_check);
input clk, reset;
output stb, dio, sclk, data_check;

//setup
reg [7:0] data_check = 8'h00;
reg sclk;
reg stb;
reg dio;

//8 leds
wire [7:0] led = 8'b00000000;

//8 7-segments displays
wire [7:0] sseg1, sseg2, sseg3, sseg4, sseg5, sseg6, sseg7, sseg8;
assign sseg1 = 8'h5b; //2 //My student number: 22119188
assign sseg2 = 8'h5b; //2
assign sseg3 = 8'h06; //1
assign sseg4 = 8'h06; //1
assign sseg5 = 8'h6f; //9
assign sseg6 = 8'h06; //1
assign sseg7 = 8'h7f; //8
assign sseg8 = 8'h7f; //8

//data (upto 16 byte) //hex code for command C ssegs 
wire [127:0]data;
assign data[0*8+7:0*8+0]=sseg1;
assign data[2*8+7:2*8+0]=sseg2;
assign data[4*8+7:4*8+0]=sseg3;
assign data[6*8+7:6*8+0]=sseg4;
assign data[8*8+7:8*8+0]=sseg5;
assign data[10*8+7:10*8+0]=sseg6;
assign data[12*8+7:12*8+0]=sseg7;
assign data[14*8+7:14*8+0]=sseg8;

assign data[1*8+7:1*8+0]=led[0];
assign data[3*8+7:3*8+0]=led[1];
assign data[5*8+7:5*8+0]=led[2];
assign data[7*8+7:7*8+0]=led[3];
assign data[9*8+7:9*8+0]=led[4];
assign data[11*8+7:11*8+0]=led[5];
assign data[13*8+7:13*8+0]=led[6];
assign data[15*8+7:15*8+0]=led[7];
reg [127:0]data_hold = 0; //since for each loop, the data has been shifted, we need another reg to reupdate the data

//command
reg [7:0]	command_activate = 8'h8f; //command3 arcoding to the datasheet
reg [7:0]	command_mode = 8'h40; //command1
reg [7:0]	command_addr = 8'hc0; //command 2

//int
integer cnt;

//initial
initial begin
	sclk = 1;
	stb = 1;
	dio = 0;
	cnt = 0;
end

//Sending protocol
always @ (posedge clk or posedge reset) begin
if (reset) begin
	sclk = 1;
	stb = 1; 
	dio = 0;
	cnt = 0;
end
else begin
	if (cnt == 0) begin
		command_mode = 8'h40;
		command_activate = 8'h8f;
		command_addr = 8'hc0;
		data_hold = data;
		stb = 0;
	end
	else if ((cnt >= 1) && (cnt <= 16)) begin //Send ffirst cmd: set mode
		data_check = 8'h40;
		dio = command_mode[0];
		sclk = ~sclk;
		if (sclk) begin command_mode=command_mode>>1; end
	end
	else if (cnt == 17) begin //End first cmd
		data_check = 0;
		stb = 1;
	end
	else if (cnt == 18) begin //Prepare second cmd
		stb = 0;
	end
	else if ((cnt>=19) && (cnt<=34)) begin //send 2nd cmd: address of 1st sseg
		data_check = 8'hc0;
		dio = command_addr[0];
		sclk = ~sclk;
		if (sclk) begin command_addr = command_addr>>1; end
	end
	else if ((cnt>=35) && (cnt<=50)) begin //send byte 1 to ssegs
		data_check = sseg1;
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=51) && (cnt<=66)) begin //send byte 2 to ssegs
		data_check = led[0];
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=67) && (cnt<=82)) begin //send byte 3 to ssegs
		data_check = sseg2;
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=83) && (cnt<=98)) begin //send byte 4 to ssegs
		data_check = led[1];
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=99) && (cnt<=114)) begin //send byte 5 to ssegs
		data_check = sseg3;
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=115) && (cnt<=130)) begin //send byte 6 to ssegs
		data_check = led[2];
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=131) && (cnt<=146)) begin //send byte 7 to ssegs
		data_check = sseg4;
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=147) && (cnt<=162)) begin //send byte 8 to ssegs
		data_check = led[3];
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=163) && (cnt<=178)) begin //send byte 9 to ssegs
		data_check = sseg5;
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=179) && (cnt<=194)) begin //send byte 10 to ssegs
		data_check = led[4];
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=195) && (cnt<=210)) begin //send byte 11 to ssegs
		data_check = sseg6;
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=211) && (cnt<=226)) begin //send byte 12 to ssegs
		data_check = led[5];
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=227) && (cnt<=242)) begin //send byte 13 to ssegs
		data_check = sseg7;
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=243) && (cnt<=258)) begin //send byte 14 to ssegs
		data_check = led[6];
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=259) && (cnt<=274)) begin //send byte 15 to ssegs
		data_check = sseg8;
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if ((cnt>=275) && (cnt<=290)) begin //send byte 16 to ssegs
		data_check = led[7];
		dio = data_hold[0];
		sclk = ~ sclk;
		if (sclk) begin data_hold = data_hold >>1; end
	end
	else if (cnt == 291) begin //End 2nd cmd
		data_check = 0;
		stb = 1;
	end
	else if (cnt == 292) begin // prepare 3rd cmd
		stb = 0;
	end
	else if ((cnt>=293) && (cnt<=308)) begin //send 3rd cmd
		data_check = 8'h8f;
		dio = command_activate[0];
		sclk = ~sclk;
		if (sclk) begin command_activate = command_activate>>1; end
	end
	else if (cnt == 309) begin // end 3rd cmd
		data_check = 0;
		stb = 1;
	end
	else if (cnt == 310) begin //reset counter
		cnt = -1;
		sclk = 1;
		dio = 0;
	end
	// counter update;
	cnt = cnt+1;
end
end
endmodule
