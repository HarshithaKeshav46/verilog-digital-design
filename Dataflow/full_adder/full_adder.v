module FA(sum,carry,a,b,c);
  input a,b,c;
  output sum,carry;
  wire w1,w2,w3;
  assign sum=a^b^c;
  assign w1=a&c;
  assign w2=b&c;
  assign w3=a&b;
  assign carry=w1|w2|w3;
endmodule