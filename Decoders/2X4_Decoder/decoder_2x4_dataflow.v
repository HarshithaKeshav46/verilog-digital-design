//Data Flow
module decoder1(I,O);
  input [1:0]I;
  output [3:0]O;
  assign O[0]=~I[1]&~I[0];
  assign O[1]=~I[1]& I[0];
  assign O[2]= I[1]&~I[0];
  assign O[3]= I[1]& I[0];
  
endmodule