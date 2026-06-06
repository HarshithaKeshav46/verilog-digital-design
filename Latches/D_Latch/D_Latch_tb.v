//D Latch 
module d_latch_tb;
  reg en,d;
  wire q;
  d_latch dut(en,d,q);
  initial 
    begin
      repeat(4)
        begin
          en=$random;
          d=$random;
          #5;
        end
      #2 $finish;
    end
  initial 
    begin
      $display("-----D LATCH-----");
      $monitor("sim time=%0t,ENABLE=%0d,D=%0d,Q=%0d",$time,en,d,q);
    end
endmodule