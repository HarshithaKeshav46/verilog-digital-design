module FA(sum,carry,a,b,c);
  input a,b,c;
  output sum,carry;
  wire w1,w2,w3;
  xor r1(sum,a,b,c);
  and a1(w1,a,c);
  and a2(w2,b,c);
  and a3(w3,a,b);
  or r2(carry,w1,w2,w3);
endmodule