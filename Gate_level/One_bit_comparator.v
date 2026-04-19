module onebitcomp(equal,lesser,greater,a,b);
  input a,b;
  output equal,lesser,greater;
  wire w1,w2;
  xnor x1(equal,a,b);
  not n1(w1,a);
  not n2(w2,b);
  and a1(lesser,w1,b);
  and a2(greater,a,w2);
endmodule