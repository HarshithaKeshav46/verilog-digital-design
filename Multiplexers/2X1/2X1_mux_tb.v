module mux21test;
  reg I0,I1,S,Y;
  wire y;
  integer i;
  mux21 dut(I0,I1,S,Y);

    initial begin
      repeat(8)
      begin
        I0=$random;
        I1=$random;
        S=$random;
        #2;
      end
  
  end
  initial begin
    $monitor("sim time=%0t,I0=%b,I1=%b,S=%b,Y=%b",$time,I0,I1,S,Y);
  end
endmodule
