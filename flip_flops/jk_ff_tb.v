`timescale 1ns / 1ps

module jk_ff_tb;
reg j,k,clk,rst;
wire q;
jk_ff uut(.j(j),.k(k),.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("jk_ff.vcd");
    $dumpvars(0, jk_ff_tb);   // your TB module name
end
initial begin
clk=1'b0;
end
always #5 clk=~clk;

initial begin
$monitor("%0t j=%b k=%b q=%b",$time,j,k,q);
j=0;k=0;#10;
j=0;k=1;#10;
j=1;k=0;#10;
j=1;k=1;#10;
$finish;
end
endmodule

