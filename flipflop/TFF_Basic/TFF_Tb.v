module tb_tff;

reg clk, T;
wire Q;

tff dut(clk, T, Q);

always #5 clk = ~clk;

initial begin
    clk = 0;
    T = 1;

    #10 T = 1;
    #20 T = 0;
    #10 T = 1;
    #20 $finish;
end

initial begin
    $dumpfile("tff.vcd");
    $dumpvars(0, tb_tff);
end

endmodule