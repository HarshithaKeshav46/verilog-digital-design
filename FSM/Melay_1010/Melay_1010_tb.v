module tb;

  reg clk,rst,seq_in;
  wire det_out;

  fsm_melay_1010 dut (clk,rst,seq_in,det_out);

  initial 
    begin
      clk=0;
      rst=0;
      seq_in=0;

      #12 rst=1;

      // Input Sequence : 10101010
      #10 seq_in=1;
      #10 seq_in=0;
      #10 seq_in=1;
      #10 seq_in=0;
      #10 seq_in=1;
      #10 seq_in=0;
      #10 seq_in=1;
      #10 seq_in=0;

      #20 $finish;
    end

  always #5 clk=~clk;

  initial
    begin
      $monitor("time=%0t clk=%b rst=%b seq_in=%b det_out=%b",
               $time,clk,rst,seq_in,det_out);
    end

  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,tb);
    end

endmodule