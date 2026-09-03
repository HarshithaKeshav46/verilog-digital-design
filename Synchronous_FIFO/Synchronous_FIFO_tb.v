module tb;
  reg clk,rst,wr_en,rd_en;
  reg [7:0]data_in;
  wire [7:0] data_out;
  wire full,empty;
  fifo_sync dut (clk,rst,wr_en,rd_en,data_in,data_out, full,empty);
  initial 
    begin
      clk=0;
      rst=0;
      wr_en=0;
      rd_en=0;
      data_in=0;
    end
  always #5clk=~clk;
  initial
    begin
      rst=1;
      #10;
      rst=0;
      wr_en=1;
      data_in=5;
      #10;
      wr_en=1;
      data_in=10;
      #10;
      wr_en=0;
      #10;
      rd_en=1'b1;
      #10
      $finish;
    end
  initial 
    begin
      $monitor("sim time=%0t,clk=%0d,rst=%0d,wr_en=%0d,rd_en=%0d,data_in=%0d,data_out=%0d, full=%0d,empty=%0d",$time,clk,rst,wr_en,rd_en,data_in,data_out,full,empty);
    end
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,tb);
    end
endmodule  