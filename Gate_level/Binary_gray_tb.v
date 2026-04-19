module b2g_test;
  reg C,B,A;
  wire G2,G1,G0;
  b2g dut (G2,G1,G0,C,B,A);
  initial begin
    C=0;B=0;A=0;
    #2 C=0;B=0;A=1;
    #2 C=0;B=1;A=0;
    #2 C=0;B=1;A=1;
    #2 C=1;B=0;A=0;
    #2 C=1;B=0;A=1;
    #2 C=1;B=1;A=0;
    #2 C=1;B=1;A=1;
  end
  initial begin 
    $monitor("sim time=%0t,C=%b,B=%b,A=%b,G2=%b,G1=%b,G0=%b",
             $time,C,B,A,G2,G1,G0);
  end
    initial begin
      $dumpfile("dum.vcd");
      $dumpvars(0,C,B,A,G2,G1,G0);
    end
endmodule
    