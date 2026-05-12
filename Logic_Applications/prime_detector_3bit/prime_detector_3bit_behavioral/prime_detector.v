module primedetect(y,a,b,c);
  input a,b,c;
  output reg y;
  always@(a,b,c)
    begin
      y=~a&c|a&c;
    end
endmodule