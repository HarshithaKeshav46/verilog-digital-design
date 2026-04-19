module decoder(O,I);
  input [1:0]I;
  output [3:0]O;
  wire [0:1]w;
  not n1(w[0],I[0]);
  not n2(w[1],I[1]);
  and a1(O[3],w[0],w[1]);
  and a2(O[1],w[0],I[1]);
  and a3(O[2],I[0],w[1]);
  and a4(O[0],I[0],I[1]);
endmodule