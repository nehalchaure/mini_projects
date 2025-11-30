module two_one_mux(
input a,b,s,
output f
);
wire f1,f2;
  
  assign f1=a & ~s;
  assign f2=b & s;
  assign f=f1|f2;
  
endmodule

