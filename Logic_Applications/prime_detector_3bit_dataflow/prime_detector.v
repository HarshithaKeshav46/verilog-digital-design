module primedetect(y,a,b,c);
  input a,b,c;
  output y;
  wire w1,w2,w3;
  assign w1=~a;
  assign w2=w1&b;
  assign w3=a&c;
  assign y=w2|w3;
endmodule