module FA_test;
  reg a,b,c;
  wire sum,carry;
  FA dut(sum,carry,a,b,c);
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
  initial begin
    $dumpfile("dum.vcd");
    $dumpvars(0,a,b,c,sum,carry);
  end
endmodule