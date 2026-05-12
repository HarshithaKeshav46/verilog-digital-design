module primedetect_test;
  reg a,b,c;
  wire y;
  primedetect dut(y,a,b,c);
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
    $monitor("sim time=%0t,a=%b,b=%b,c=%b,y=%b",$time,a,b,c,y);
  end
  initial begin 
    $dumpfile("dum.vcd");
    $dumpvars(0,a,b,c,y);
  end
endmodule