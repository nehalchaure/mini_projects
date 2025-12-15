`timescale 1ns / 1ps


module jk_ff(
input j,k,clk,rst,
output reg q
);
initial q=0;
always@(negedge clk or negedge rst)begin
if(!rst)
q<=0;
else
case({j,k})
2'b00: q<=q;
2'b01: q<=0;
2'b10: q<=1;
2'b11: q<=~q;
endcase
end
endmodule
