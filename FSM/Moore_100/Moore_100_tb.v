module tb;

reg clk;
reg rst;
reg seq_in;
wire det_out;

moore_100 dut (
    .clk(clk),
    .rst(rst),
    .seq_in(seq_in),
    .det_out(det_out)
);

// Clock Generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 0;
    seq_in = 0;

    // Apply Reset
    #12 rst = 1;
  #10 seq_in = 1;
  #10 seq_in = 0;
  #10 seq_in = 0;

  #10 seq_in = 1;
  #10 seq_in = 0;
  #10 seq_in = 0;

  #10 seq_in = 1;
  #10 seq_in = 0;
  #10 seq_in = 0;

  

    #20 $finish;
end

initial
begin
    $monitor("Time=%0t clk=%b rst=%b seq_in=%b det_out=%b",
             $time, clk, rst, seq_in, det_out);
end

initial
begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
end

endmodule
