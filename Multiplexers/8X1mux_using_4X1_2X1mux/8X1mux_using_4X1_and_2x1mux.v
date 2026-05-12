//Lower module
module mux41(I,S,Y);
    input [3:0] I;
    input [1:0] S;
    output Y;
    assign Y = (S[1]) ?
               ((S[0]) ? I[3] : I[2]) :
               ((S[0]) ? I[1] : I[0]);
endmodule

//Top module
`include "mux41.sv"
module mux81(I,S,Y);
    input [7:0] I;
    input [2:0] S;
    output Y;
    wire w1,w2;
    mux41 m1(I[3:0], S[1:0], w1);
    mux41 m2(I[7:4], S[1:0], w2);
  assign Y = (S[2]) ? w2 : w1;//2X1_mux
endmodule