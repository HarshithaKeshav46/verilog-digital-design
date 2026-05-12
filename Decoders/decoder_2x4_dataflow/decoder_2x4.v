module decoder(O,I);
  input [1:0]I;
  output [3:0]O;
  wire [0:1]w;
  assign w[0]=~I[0];
  assign w[1]=~I[1];
  assign O[3]=w[0]&w[1];
  assign O[1]=w[0]&I[1];
  assign O[2]=I[0]&w[1];
  assign O[0]=I[0]&I[1];
endmodule