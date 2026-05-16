//Lower module
module decoder3X8(I,O,en);
  input [2:0] I;
  input en;
  output [7:0] O;

  assign O[0]=en & ~I[2] & ~I[1] & ~I[0];
  assign O[1]=en & ~I[2] & ~I[1] & I[0];
  assign O[2]=en & ~I[2] & I[1] & ~I[0];
  assign O[3]=en & ~I[2] & I[1] & I[0];
  assign O[4]=en & I[2] & ~I[1] & ~I[0];
  assign O[5]=en & I[2] & ~I[1] & I[0];
  assign O[6]=en & I[2] & I[1] & ~I[0];
  assign O[7]=en & I[2] & I[1] & I[0];

endmodule

//Top module
`include "decoder3X8.sv"
module decoder4X16(I,O);
  input[3:0]I;
  output[15:0]O;
  decoder3X8 m1(I[2:0], O[7:0], ~I[3]);
  decoder3X8 m2(I[2:0], O[15:8], I[3]);
endmodule
