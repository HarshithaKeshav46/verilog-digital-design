module FA_test;
  reg a,b,c;
  wire sum,carry;
  FA dut(a,b,c,sum,carry);
  initial begin 
    a=0;b=0;c=0;
    #2 a=0;b=0;c=1;
    #2 a=0;b=1;c=0;
    #2 a=0;b=1;c=1;
    #2 a=1;b=0;c=0;
    #2 a=1;b=0;c=1;
    #2 a=1;b=1;c=0;
    #2 a=1;b=1;c=1;
  end
  initial begin
    $monitor("sim time=%0t,a=%b,b=%b,c=%b,sum=%b,carry=%b",$time,a,b,c,sum,carry);
  end
endmodule