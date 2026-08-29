module siso(clk,rst,si,so);
  input clk,rst,si;
  output reg so;
  reg[3:0]mem;
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        mem<=4'b0000;
      else
        begin
          so<=mem[0];
          mem<={si,mem[3:1]};
        end
    end
endmodule
