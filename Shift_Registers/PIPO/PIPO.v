module pipo(clk,rst,pi,po);
  input clk,rst,pi;
  output reg po;
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        po<=4'b0000;
      else
        begin
          po<=pi;
        end
    end
endmodule
