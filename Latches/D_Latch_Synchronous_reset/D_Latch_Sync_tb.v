//D Latch synchronous

module Dlatch_test;
  reg clk,rst,D;
  wire Q;
  Dlatch dut (clk,rst,D,Q);
  initial begin
    clk=1;
    rst=0;
    #12 rst=1;
    D=0;
    #5 D=1;
    #10 D=0;
    #6 D=1;
    #15 D=0;
 
  end
  initial begin
    $display("D Latch Synchronous");
    $monitor("sim time=%0t,Clk=%d,Reset=%d,D=%d,Q=%d",$time,clk,rst,D,Q);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,D,Q);
  end
endmodule