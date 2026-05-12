module mux21(I0,I1,S,Y);
  input I0,I1,S;
  output reg Y;
  always@(I0,I1,S)
    begin 
      if(S==1'b1)
        Y=I1;
      else
        Y=I0;
    end
endmodule