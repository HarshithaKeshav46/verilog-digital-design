module mux21(I0,I1,S,Y);
  input I0,I1,S;
  output Y;
  wire w1, w2, w3;
  not n1(w1, S) ;
  and a1(w2, I0, w1) ;
  and a2(w3, I1, S) ;
  or r1(Y, w2, w3) ;
endmodule