module sipo_test;
  reg clk,rst,si;
  wire po;
  sipo dut(clk,rst,si,po);
  initial begin 
    clk=0;
    rst=0;
    #5 rst=1;
    si=1;
    #5 si=0;
    #2 si=1;
    #4 si=1;
    #10 $finish;
  end
  always #2clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,sipo_test);
  end
endmodule