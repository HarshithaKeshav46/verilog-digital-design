module tb_up_down_counter;

reg clk;
reg reset;
reg dir;
wire [3:0] count;

up_down_counter uut (
    .clk(clk),
    .reset(reset),
    .dir(dir),
    .count(count)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("up_down_counter.vcd");
    $dumpvars(0, tb_up_down_counter);

    clk = 0;
    reset = 1;
    dir = 1;      // Start with Up Count

    #10 reset = 0;

    // Count Up
    #50;

    // Change direction to Down
    dir = 0;

    #50;

    // Change direction to Up again
    dir = 1;

    #50;

    $finish;
end

initial begin
    $monitor("Time=%0t Reset=%b Dir=%b Count=%d",
             $time, reset, dir, count);
end

endmodule