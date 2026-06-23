module counter(clk,rst,dir,count);
  input clk,rst,dir;
  output reg[6:0] count;
  reg[6:0]temp;
  assign count=temp;
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        temp<=7'd0;
      else if(dir)
        temp<=temp+1;
      else
        temp<=temp-1;
    end
endmodule
