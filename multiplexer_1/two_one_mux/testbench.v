module two_one_mux_tb;
  reg a,b,s;
  wire f;
  
  two_one_mux uut(.a(a),.b(b),.s(s),.f(f));
  
  initial begin
    $dumpfile("two_one_mux.vcd");
    $dumpvars(0,two_one_mux_tb);
    
    $monitor("a=%b b=%b s=%b | f=%b", a,b,s,f);
    
    a=0; b=1; s=0; #10
    a=0; b=1; s=1; #10
    
    
    $finish;
  end
endmodule
