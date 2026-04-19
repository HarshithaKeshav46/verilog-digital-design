module onebitcomp_test;
  reg a,b;
  wire equal,lesser,greater;
  onebitcomp dut(equal,lesser,greater,a,b);
  initial begin
    a=0;b=0;
    #2 a=0;b=1;
    #2 a=1;b=0;
    #2 a=1;b=1;
  end
  initial begin
    $monitor("sim time=%0t,a=%b,b=%b,equal=%b,lesser=%b,greater=%b",$time,a,b,equal,lesser,greater);
  end
  initial begin
    $dumpfile("dum.vcd");
    $dumpvars(0,a,b,equal,lesser,greater);
  end
endmodule