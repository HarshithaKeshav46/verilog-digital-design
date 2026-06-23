module counter(clk,rst,count);
  input clk,rst;
  output reg[6:0] count;
  reg[6:0]temp;
  assign count=temp;
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        temp<=7'd0;
      else if (temp==7'd99)
        temp<=7'd0;
      else
        temp<=temp+1;
    end
endmodule