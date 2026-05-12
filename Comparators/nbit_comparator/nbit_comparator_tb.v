module nbitcomparator_test;
  reg[dut.n-1:0]a,b;
  wire L,G,E;
  nbitcomparator dut(a,b,L,G,E);
  initial begin
    repeat(10)
      begin
        a=$random;
        b=$random;
        #2;
      end
  end
  initial begin
    $monitor("sim time=%0t,a=%b,b=%b,L=%b,G=%b,E=%b",$time,a,b,L,G,E);
  end 
endmodule