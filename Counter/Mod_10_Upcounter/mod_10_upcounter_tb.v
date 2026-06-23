module test;
  reg clk,rst;
  wire[3:0] count;
  counter dut(clk,rst,count);
  initial begin
    clk=0;
    rst=0;
    #5 rst=1;
    #50 $finish;
  end
  always #2 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,test);
  end
endmodule