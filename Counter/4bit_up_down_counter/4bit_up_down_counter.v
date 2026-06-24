module up_down_counter (
    input clk,
    input reset,
    input dir,          // 1 = Up, 0 = Down
    output reg [3:0] count
);

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;
    else if (dir)
        count <= count + 1;  // Up count
    else
        count <= count - 1;  // Down count
end

endmodule