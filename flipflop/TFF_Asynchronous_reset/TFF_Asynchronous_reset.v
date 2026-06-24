//TFF Asynchronous reset

module TFF_as_rest(clk,rst,T,Q);
input clk,rst,T;
  output reg Q;

  always @(posedge clk or negedge rst)
begin
        if(!rst)
            Q <= 0;
        else if(T)
            Q <= ~Q;
      else
        Q<=Q;
end
endmodule