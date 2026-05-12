module mux #(parameter N=4)(I,S,Y);
  input [N-1:0]I;
  input [($clog2(N)-1):0]S;
  output reg Y;
  always@(I,S)
    begin
      Y=I[S];
    end
endmodule