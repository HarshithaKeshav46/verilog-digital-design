//Lower module
module mux41(I,S,Y);
  input[3:0]I;
  input[1:0]S;
  output Y;
  assign Y=(S[1])?
    ((S[0])?I[3]:I[2]):
    ((S[0])?I[1]:I[0]);
endmodule

//Top module
`include "mux41.sv"
module mux16(I,S,Y);
  input [15:0] I;
  input [3:0] S;
  output Y;

  wire [3:0] w;

  mux41 m1(I[3:0],   S[1:0], w[0]);
  mux41 m2(I[7:4],   S[1:0], w[1]);
  mux41 m3(I[11:8],  S[1:0], w[2]);
  mux41 m4(I[15:12], S[1:0], w[3]);

  // Final selection among w[0], w[1], w[2], w[3]
  mux41 m5(w, S[3:2], Y);

endmodule
