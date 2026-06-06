//SR LATCH SYNCHRONOUS RESET
module tb;
  reg s,r,clk,rst;
  wire q,qbar;
  sr_latch dut(s,r,clk,rst,q,qbar);
  initial
    begin
      clk=0;
      rst=0;
      #6 rst=1;
      #4 s=0;r=0;
      #8 s=0;r=1;
      #2 s=1;r=0;
      #2 s=1;r=1;
      #10 $finish;    
    end
  always#5clk=~clk;
  initial 
    begin
      $display("---SR LATCH SYNCHRONOUS RESET---");
      $monitor("sim time=%0t,cllk=%0d,rst=%0d,S=%0d,R=%0d,Q=%0d,Qbar=%0d",$time,clk,rst,s,r,q,qbar);
    end
  initial begin
    $dumpfile("dum.vcd");
    $dumpvars(0,tb);
  end
endmodule
