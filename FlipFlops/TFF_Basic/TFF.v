module tff(
    input clk,
    input T,
    output reg Q
);
  initial
    begin
      Q=0;
    end
  always @(posedge clk)
    begin
      if(T)
        Q <= ~Q;
      else
        Q <= Q;
    end
endmodule