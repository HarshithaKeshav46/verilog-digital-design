//lower module
module HA(a,b,s,c);
  input a,b;
  output s,c;
  assign s=a^b;
  assign c=a&b;
endmodule

//Top module
`include "HA.sv"
module FA(a,b,c,sum,carry);
  input a,b,c;
  output sum,carry;
  wire w1,w2,w3;
  HA h1(a,b,w1,w2);
  HA h2(.a(w1),.b(c),.s(sum),.c(w3));
  assign carry=w2|w3;
endmodule