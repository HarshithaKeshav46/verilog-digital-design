module sr_latch(s,r,q,qbar);
  input s,r;
  output reg q,qbar;
  always@(s,r)
    begin
      if(!s&&r)
        begin
          q=0;
          qbar=1;
        end
      else
        if(s&&!r)
          begin
            q=1;
      	    qbar=0;
          end
      else
        if(s&&r)
          begin
            q=1'bx;
            qbar=1'bx;
          end
    end
endmodule