module onebitcomp(equal,lesser,greater,a,b);
  input a,b;
  output equal,lesser,greater;
  wire w1,w2;
  assign equal=a~^b;
  assign w1=~a;
  assign w2=~b;
  assign lesser=w1&b;
  assign greater=a&w2;
endmodule