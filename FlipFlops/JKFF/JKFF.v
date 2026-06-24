module jk_ff(
    input clk,
    input J,
    input K,
    output reg Q
);
  initial
    Q = 0;
  always @(posedge clk)
    begin
      case ({J,K})
        2'b00: Q <= Q;      // Hold
        2'b01: Q <= 1'b0;   // Reset
        2'b10: Q <= 1'b1;   // Set
        2'b11: Q <= ~Q;     // Toggle
      endcase
    end
endmodule