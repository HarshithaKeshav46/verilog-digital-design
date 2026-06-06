//D Latch Asynchronous
module Dlatch_as(clk,rst,D,Q);
  input clk,rst,D;
  output reg Q;
  always@(clk,rst,D)
    begin 
        if(!rst)
          Q<=0;
      else
        Q<=D;
    end
endmodule