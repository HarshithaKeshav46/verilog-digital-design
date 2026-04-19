module FS(diff,borrow,a,b,c);
  input a,b,c;
  output diff,borrow;
  wire w1,w2,w3,w4;
  assign diff=a^b^c;
  assign w1=~a;
  assign w2=w1&b;
  assign w3=b&c;
  assign w4=w1&c;
  assign borrow=w2|w3|w4;
endmodule