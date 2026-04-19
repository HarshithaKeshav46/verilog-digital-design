module decoder_test;
  reg [1:0]I;
  wire [3:0]O;
  decoder dut(O,I);
  initial begin
    I=2'b00;
    #2 I=2'b01;
    #2 I=2'b10;
    #2 I=2'b11;
  end
  initial begin
    $monitor("sim time=%0t,I=%b,O=%b",$time,I,O);
  end
  initial begin
    $dumpfile("dum.vcd");
    $dumpvars(0,I,O);
  end
endmodule
