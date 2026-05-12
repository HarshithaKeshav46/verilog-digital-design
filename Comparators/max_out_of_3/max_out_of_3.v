module max(a,b,c,y);
  input [1:0]a,b,c;
  output reg [1:0]y;
  always@(a,b,c)
    begin
      if(a>b && a>c)
      y=a;
      else
        if(b>a && b>c)
          y=b;
      else
        y=c;
    end
endmodule
