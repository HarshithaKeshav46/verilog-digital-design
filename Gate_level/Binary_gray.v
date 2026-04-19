module b2g(G2,G1,G0,C,B,A);
  input C,B,A;
  output G2,G1,G0;
  buf b(G2,C);
  xor r1(G1,B,C);
  xor r2(G0,A,B);
endmodule