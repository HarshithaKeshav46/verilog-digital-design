//Lower module
module decoder(I,O,en);
  input [1:0]I;
  input en;
  output [3:0]O;
  wire [0:1]w;
  assign w[0]=en & (~I[0]);
  assign w[1]=en & (~I[1]);
  assign O[3]=en & w[0]&w[1];
  assign O[1]=en & w[0]&I[1];
  assign O[2]=en & I[0]&w[1];
  assign O[0]=en & I[0]&I[1];
endmodule

//Top module
`include "2X4d.sv"
module decoder_3X8(I,O,en);

  input [2:0] I;
  input en;
  output [7:0] O;

  decoder h1(I[1:0], O[3:0], en & ~I[2]);
  decoder h2(I[1:0], O[7:4], en & I[2]);

endmodule
  
