`timescale 1ns / 1ps

module comparator(
input [3:0]A,B,
output q
    );
    
wire a,b,c,d,e,f;

assign a = A[0] & B[0];
assign b = A[1] & B[1];
assign c = b & a;
assign d = A[2] & B[2];
assign e = A[3] & B[3];
assign f = d & e;
assign q = c & f;
endmodule
