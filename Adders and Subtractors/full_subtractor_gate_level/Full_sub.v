module FS(diff,borrow,a,b,c);
  input a,b,c;
  output diff,borrow;
  wire w1,w2,w3,w4;
  xor x1(diff,a,b,c);
  not n1(w1,a);
  and a1(w2,w1,b);
  and a2(w3,b,c);
  and a3(w4,w1,c);
  or r1(borrow,w2,w3,w4);
endmodule