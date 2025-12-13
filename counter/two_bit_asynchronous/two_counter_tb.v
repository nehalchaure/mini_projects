`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2025 09:26:19
// Design Name: 
// Module Name: two_counter_tb
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


module two_counter_tb;
reg [1:0]j,k;
reg clk,rst;
wire [1:0]q;

two_counter uut(
.j(j),.k(k),.clk(clk),.rst(rst),.q(q)
);

initial begin
clk=1'b0;
end

always #5 clk=~clk;

initial begin
$monitor("0%t j0=%b k0=%b j1=%b k1=%b q0=%b q1=%b",$time,j[0],k[0],j[1],k[1],q[0],q[1]);
clk=0;rst=1;
j=2'b11;k=2'b11;
#10 rst=0;

//let counter run
#100;

$finish;
end
endmodule

