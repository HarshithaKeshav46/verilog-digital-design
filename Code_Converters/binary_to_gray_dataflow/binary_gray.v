module b2g(G2,G1,G0,C,B,A);
  input C,B,A;
  output G2,G1,G0;
  assign G2=C;
  assign G1=A^B;
  assign G0=B^C;
endmodule