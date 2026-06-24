module tb_johnson_counter;

reg clk;
reg reset;
wire [3:0] count;

johnson_counter uut(
    .clk(clk),
    .reset(reset),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("johnson_counter.vcd");
    $dumpvars(0,tb_johnson_counter);

    clk = 0;
    reset = 1;

    #10 reset = 0;

    #150 $finish;
end

endmodule
