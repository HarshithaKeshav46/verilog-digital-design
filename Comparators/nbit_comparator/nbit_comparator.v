module nbitcomparator(a,b,L,G,E);
  parameter n=4;
  input [n-1:0]a,b;
  output reg L,G,E;
  always @(a,b)
    begin
      if(a>b)
      {L,G,E}=3'b010;
      else
        if(a<b)
          {L,G,E}=3'b010;
      else
      {L,G,E}=3'b001;
    end 
endmodule