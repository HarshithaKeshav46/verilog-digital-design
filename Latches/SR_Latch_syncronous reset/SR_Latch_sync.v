//SR LATCH SYNCHRONOUS RESET
module sr_latch(s, r, clk, rst, q, qbar);
  input s, r, clk, rst;
  output reg q, qbar;

  always @(s, r, clk, rst) begin
    if (clk) begin
      if (!rst) begin
        q    <= 1'b0; 
        qbar <= 1'b1;
      end 
      else if (!s && r) begin
        q    <= 1'b0;
        qbar <= 1'b1;
      end 
      else if (s && !r) begin
        q    <= 1'b1;
        qbar <= 1'b0;
      end 
      else if (s && r) begin
        q    <= 1'bx;
        qbar <= 1'bx;
      end
      else begin
        q    <= q;
        qbar <= qbar;
      end
    end
  end
endmodule