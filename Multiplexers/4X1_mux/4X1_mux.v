module mux41(I,S,Y);
  input [3:0]I;
  input [1:0]S;
  output reg Y;
  always@(I,S)
    begin 
      if(S==2'b00)
        Y=I[0];
      else
        if(S==2'b01)
          Y=I[1];
       else
         if(S==2'b10)
           Y=I[2];
       else
         if(S==2'b11)
           Y=I[3];
    end
endmodule