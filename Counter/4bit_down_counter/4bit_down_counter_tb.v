module tb_down_counter_4bit;

reg clk;
reg reset;
wire [3:0] count;

down_counter_4bit uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generation
always #5 clk = ~clk;

initial begin

  $dumpfile("down_counter_4bit.vcd"); 
  $dumpvars(0, tb_down_counter_4bit); 

    clk = 0;
    reset = 1;

    #10 reset = 0;  // release reset

    #200 $finish;
end

initial begin
    $monitor("Time=%0t Count=%b", $time, count);
end

endmodule