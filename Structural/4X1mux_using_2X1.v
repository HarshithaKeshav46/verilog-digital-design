//lower module
module mux_21 (i0,i1,s,y);
  input i0,i1,s;
  output y;
  //assign y=(s)?i0:i1;
  assign y=(~s&i0)|(s&i1);
endmodule

//Top module
`include"mux_21.sv"
module mux_41(i0,i1,i2,i3,s0,s1,y);
  input i0,i1,i2,i3,s0,s1;
  output y;
  wire w1,w2;
  mux_21 m1(i0,i1,s0,w1);
  mux_21 m2(i2,i1,s0,w2);
  mux_21 m3(w1,w2,s1,y);
endmodule