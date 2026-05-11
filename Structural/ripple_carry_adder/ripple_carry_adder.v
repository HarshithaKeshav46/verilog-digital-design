//Lower module
module FA(a,b,cin,s,cout);
  input a,b,cin;
  output s,cout;
  assign s=a^b^cin;
  assign cout=a&b|b&cin|cin&a;
endmodule

//Top module
`include "FA.sv"
module RCA(a,b,cin,s,cout);
  input [3:0]a,b;
  input cin;
  output [3:0]s;
  output cout;
  wire w1,w2,w3,w4;
  FA h1(a[0],b[0],cin,s[0],w1);
  FA h2(a[1],b[1],w1,s[1],w2);
  FA h3(a[2],b[2],w2,s[2],w3);
  FA h4(a[3],b[3],w3,s[3],w4);
  assign cout=w4;
endmodule