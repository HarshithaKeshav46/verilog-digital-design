//Behavioral
module decoder2(I,O);
  input [1:0] I;
  output reg [3:0] O;

  always @(I)
  begin
    O = 4'b0000;// reset outputs

    if(I[1]==0 && I[0]==0)
      O[0] = 1'b1;
    else if(I[1]==0 && I[0]==1)
      O[1] = 1'b1;
    else if(I[1]==1 && I[0]==0)
      O[2] = 1'b1;
    else
      O[3] = 1'b1;
  end

endmodule