`timescale 1ns/1ps
module mealy_fsm_tb;
  reg clk;
  reg reset;
  reg in;
  wire out;
  
  mealy_fsm uut(
    .clk(clk),
    .reset(reset),
    .in(in),
    .out(out)
  );
  
  always #5 clk = ~clk;
  
  initial begin
    $dumpfile("dup.vcd");
    $dumpvars(0, mealy_fsm_tb);
    
    clk = 0;
    reset = 1;
    in = 0;
    
    #10 reset = 0;
    
    #10 in = 1;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 1;
    
    #20 $finish;
  end
  
  initial begin
    $monitor("Time=%0t Reset=0%b In=%b Out=%b", $time, reset, in, out);
  end
endmodule
    
