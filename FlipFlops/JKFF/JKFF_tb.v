module tb_jk_ff;

reg clk;
reg J;
reg K;
wire Q;

jk_ff dut (
    .clk(clk),
    .J(J),
    .K(K),
    .Q(Q)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    J = 0;
    K = 0;

    // 00 -> Hold
    #10;

    // 10 -> Set
    J = 1; K = 0;
    #10;

    // 00 -> Hold
    J = 0; K = 0;
    #10;

    // 01 -> Reset
    J = 0; K = 1;
    #10;

    // 11 -> Toggle
    J = 1; K = 1;
    #10;

    // 11 -> Toggle again
    #10;

    // 00 -> Hold
    J = 0; K = 0;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t clk=%b J=%b K=%b Q=%b",
              $time, clk, J, K, Q);
end

initial begin
    $dumpfile("jk_ff.vcd");
    $dumpvars(0, tb_jk_ff);
end

endmodule