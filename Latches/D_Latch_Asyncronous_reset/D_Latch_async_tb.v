//D Latch Asynchronous
module Dlatch_as_test;
  reg clk,rst,D;
  wire Q;
  Dlatch_as dut (clk,rst,D,Q);
  initial begin
    clk=0;
    rst=0;
    #12 rst=1;
    D=0;
    #5 D=1;
    #10 D=0;
    #6 D=1;
    #15 D=0;
 
  end
  initial begin
    $display("D Latch Asynchronous");
    $monitor("sim time=%0t,Clk=%d,Reset=%d,D=%d,Q=%d",$time,clk,rst,D,Q);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,D,Q);
  end
endmodule