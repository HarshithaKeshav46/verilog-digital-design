module up_counter_4bit (
    input clk,
    input reset,
    output reg [3:0] count
);

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;   // reset to 0
    else
        count <= count + 1; // increment on every rising edge
end

endmodule