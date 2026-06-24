//D Filpflop synchronous

module DFF_test;
  reg clk,rst,D;
  wire Q;
  DFF dut (clk,rst,D,Q);
  initial begin
    clk=1;
    rst=0;
    D=0;
    #12 rst=1;
    D=0;
    #5 D=1;
    #10 D=0;
    #6 D=1;
    #15 D=0;
    #20 $finish;
  end
  always #6 clk=~clk;
  initial begin
    $monitor("sim time=%0t,Clk=%d,Reset=%d,D=%d,Q=%d",$time,clk,rst,D,Q);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,D,Q);
  end
endmodule