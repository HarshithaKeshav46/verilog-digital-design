module encoder42(D3,D2,D1,D0,Y1,Y0);
  input D3,D2,D1,D0;
  output reg Y1,Y0;
  always@(D3,D2,D1,D0)
    begin
      Y1=D3|D2;
      Y0=D3|D1&~D2;
    end
endmodule