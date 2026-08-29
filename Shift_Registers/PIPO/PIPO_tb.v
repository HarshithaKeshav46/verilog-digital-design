module pipo_test;
  reg clk,rst,pi;
  wire po;
  pipo dut(clk,rst,pi,po);
  initial begin 
    clk=0;
    rst=0;
    #5 rst=1;
    repeat(10)
    begin
      pi=$random;
      #4;
    end
    #10 $finish;
  end
  always #2clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,pipo_test);
  end
endmodule