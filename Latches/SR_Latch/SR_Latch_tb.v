module tb;
  reg s,r;
  wire q,qbar;
  sr_latch dut(s,r,q,qbar);
  initial
    begin
      repeat(5)
        begin
          s=$random;
          r=$random;
          #2;
        end
      #5 $finish;
    end
  initial 
    begin
      $display("---SR LATCH---");
      $monitor("sim time=%0t,S=%0d,R=%0d,Q=%0d,Qbar=%0d",$time,s,r,q,qbar);
    end
  initial begin
    $dumpfile("dum.vcd");
    $dumpvars(0,tb);
  end
endmodule
