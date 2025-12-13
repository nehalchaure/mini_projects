`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2025 09:25:50
// Design Name: 
// Module Name: two_counter
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


module two_counter(
input [1:0] j,k,
input clk,rst,
output [1:0] q
    );
    
    jk_ff uut(.j(j[0]),.k(k[0]),.clk(clk),.rst(rst),.q(q[0]));
    jk_ff uut1(.j(j[1]),.k(k[1]),.clk(q[0]),.rst(rst),.q(q[1]));
   
    
endmodule

