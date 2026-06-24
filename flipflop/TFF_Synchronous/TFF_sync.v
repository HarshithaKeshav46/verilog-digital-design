//TFF synchronous
module TFF(clk,rst,T,Q);
input clk,rst,T;
  output reg Q;
  always @(posedge clk)
begin
  if(!rst)
    Q <= 0;
  else if(T)
    Q <= ~Q;
  else
    Q<=Q;
end
endmodule
