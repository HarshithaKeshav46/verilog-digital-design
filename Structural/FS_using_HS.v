//lower module
module HS(a,b,dif,br);
  input a,b;
  output dif,br;
  assign dif=a^b;
  assign br=~a&b;
endmodule

//Top module
`include "HS.sv"
module FS(a,b,c,diff,borrow);
  input a,b,c;
  output diff,borrow;
  wire w1,w2,w3;
  HS h1(a,b,w1,w2);
  HS h2(.a(w1),.b(c),.dif(diff),.br(w3));
  assign borrow=w2|w3;
endmodule