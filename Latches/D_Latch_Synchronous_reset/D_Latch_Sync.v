//D Latch synchronous
module Dlatch(clk,rst,D,Q);
  input clk,rst,D;
  output reg Q;
  always@(clk,rst,D)
    begin 
      if(clk)
        if(!rst)
          Q<=0;
      else
        Q<=D;
    end
endmodule