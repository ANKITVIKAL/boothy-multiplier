`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2024 18:07:46
// Design Name: 
// Module Name: newtb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module booth_tb();
parameter N = 8;
reg [N-1:0] data_inM,data_inQ;
reg start,clk;
wire [N+N-1:0] ans;
booth bt(start,clk,data_inM,data_inQ,ans);
initial 
begin
start = 1'b1;
clk = 1'b0;
end
always #5 clk=~clk;
initial 
begin
#15 data_inM=8'b00011111;data_inQ=8'b00100111;
 $display($time,"data_inM=%b,data_inQ=%b,ans=%b",data_inM,data_inQ,ans);
#500 $finish;
end
endmodule