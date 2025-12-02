`timescale 1ns/1ps
module full_adder_dataflow(
input a,b,cin,
  output sum,cout
);
  
  assign sum=a^b^cin;
  assign cout=(a&b)|(b&cin)|(cin&a);
  
endmodule
  

