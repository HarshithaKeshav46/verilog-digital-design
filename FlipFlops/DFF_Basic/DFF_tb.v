module tb_dff;

reg clk;
reg D;
wire Q;

dff uut (
    .clk(clk),
    .D(D),
    .Q(Q)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("dff.vcd");
    $dumpvars(0, tb_dff);

    clk = 0;
    D   = 0;

    #12 D = 1;
    #10 D = 0;
    #10 D = 1;
    #10 D = 0;
    #20 $finish;
end

initial begin
    $monitor("Time=%0t clk=%b D=%b Q=%b",
              $time, clk, D, Q);
end

endmodule