//without using vector 
module b2g(G2,G1,G0,C,B,A);
  input C,B,A;
  output G2,G1,G0;
  buf b(G2,C);
  xor r1(G1,B,C);
  xor r2(G0,A,B);
endmodule

//Using vector 
module b2g(g,b);
  input [2:0]b;
  output [2:0]g;
  buf b1(g[2],b[2]);
  xor r1(g[1],b[1],b[2]);
  xor r2(g[0],b[0],b[1]);
endmodule
