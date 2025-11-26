module HA_tb;
reg a,b;
  wire s,c;
  HA uut(
  .a(a),
    .b(b),
    .s(s),
    .c(c)
  );
  
initial begin
   $dumpfile("wave.vcd");
  $dumpvars(0, HA_tb);

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
$finish;
  end
 
initial begin
    $monitor("Time=%0t | a=%b b=%b | sum=%b carry=%b", $time, a, b, s, c);
end
    
    endmodule

