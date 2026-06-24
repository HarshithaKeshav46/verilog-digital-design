module tb_async_counter_3bit;

reg clk;
reg reset;
wire [2:0] count;

async_counter_3bit uut(
    .clk(clk),
    .reset(reset),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("async_counter_3bit.vcd");
    $dumpvars(0,tb_async_counter_3bit);

    clk = 0;
    reset = 1;

    #10 reset = 0;

    #100 $finish;
end

endmodule