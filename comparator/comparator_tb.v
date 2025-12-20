`timescale 1ns / 1ps

module comparator_tb;
reg [3:0]A,B;
wire q;

comparator uut(
.A(A),
.B(B),
.q(q)
);

initial begin
$dumpfile("comparator.vcd");
$dumpvars(0,comparator_tb);
end

initial begin
$monitor("A=%b,B=%b,q=%b",A,B,q);
A=4'b1001;B=4'b1001;#10;
A=4'b1001;B=4'b1000;#10;
A=4'b1101;B=4'b1101;#10;
A=4'b0111;B=4'b1110;#10;

#10 $finish;
end
endmodule
