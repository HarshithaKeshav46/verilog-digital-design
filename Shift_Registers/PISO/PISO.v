module piso(clk,rst,load,pi,so);
  input clk,rst,load;
  input [3:0] pi;
  output reg so;
  reg [3:0] mem;

  always @(posedge clk or negedge rst)
    begin
      if(!rst)
        begin
          mem <= 4'b0000;
          so <= 1'b0;
        end
      else if(load)
        begin
          mem <= pi;
        end
      else
        begin
          so <= mem[0];
          mem <= {1'b0,mem[3:1]};
        end
    end
endmodule