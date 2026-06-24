module tb_sr_ff;
  reg clk;
  reg S;
  reg R;
  wire Q;
  sr_ff dut (
    .clk(clk),
    .S(S),
    .R(R),
    .Q(Q)
  );

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    S   = 0;
    R   = 0;

    // Hold
    #10;

    // Set
    S = 1; R = 0;
    #10;

    // Hold
    S = 0; R = 0;
    #10;

    // Reset
    S = 0; R = 1;
    #10;

    // Hold
    S = 0; R = 0;
    #10;

    // Invalid State
    S = 1; R = 1;
    #10;

    // Back to Hold
    S = 0; R = 0;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t clk=%b S=%b R=%b Q=%b",
              $time, clk, S, R, Q);
end

initial begin
    $dumpfile("sr_ff.vcd");
    $dumpvars(0, tb_sr_ff);
end

endmodule