module test;
  reg clk,rst,dir;
  wire[6:0] count;
  counter dut(clk,rst,dir,count);
  initial begin
    clk=0;
    rst=0;
    dir=1;
    #2 dir=0;
    #5 dir=1;
    #5 dir=0;
    #2 rst=1;
    #500 $finish;
  end
  always #2 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,test);
  end
endmodule