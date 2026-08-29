module sipo(clk,rst,si,po);
  input clk,rst,si;
  output reg po;
  reg[3:0]mem;
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        mem<=4'b0000;
      else
        begin
          mem<={si,mem[3:1]};
          po<=mem;
        end
    end
endmodule