/*/D Filpflop synchronous
module DFF(clk,rst,D,Q);
  input clk,rst,D;
  output reg Q;
  always@(posedge clk)
    begin 
      if(!rst)
        Q<=0;
      else
        Q<=D;
    end
endmodule*/


//D Filpflop Asynchronous

module DFF_as(clk,rst,D,Q);
  input clk,rst,D;
  output reg Q;
  always@(posedge clk or negedge rst)
    begin 
        if(!rst)
          Q<=0;
      else
        Q<=D;
    end
endmodule