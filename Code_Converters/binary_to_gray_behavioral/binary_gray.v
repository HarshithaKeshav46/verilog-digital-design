module b2g(G2,G1,G0,C,B,A);
  input C,B,A;
  output reg G2,G1,G0;
  always@(C,B,A)
    begin
      G2=C;
      G1=B^C;
      G0=A^B;
    end 
endmodule