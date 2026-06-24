module counter(clk,rst,count);
  input clk,rst;
  output [3:0] count;
  reg[3:0]temp;
  assign count=temp;
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        temp<=4'b000;
      else if (temp==4'b1001)
        temp<=4'b0000;
      else
        temp<=temp+1;
    end
endmodule