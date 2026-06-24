//T Latch Asynchronous rest
module TFF_as_test;

reg clk,rst,T;
wire Q;

TFF_as_rest dut(clk,rst,T,Q);

initial begin
    clk =0;
    rst=0;
    T=0;

    #12 rst=1;
    #5 T=1;
    #10 T=0;
    #6 T=1;
    #15 T=0;
    #20 $finish;  
end
always #5 clk=~clk;

initial begin
    $monitor("time=%0t clk=%d rst=%d T=%d Q=%d",
              $time,clk,rst,T,Q);
end
  initial begin
    $dumpfile("tff.vcd");
    $dumpvars(0, TFF_as_test);
  end
endmodule