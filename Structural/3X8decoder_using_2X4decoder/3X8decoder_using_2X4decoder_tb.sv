module decoder_3X8_test;

  reg [2:0] I;
  reg en;
  wire [7:0] O;

  decoder_3X8 dut(I,O,en);

  initial begin
    en = 1;
    I = 3'b000;
    #2 I = 3'b001;
    #2 I = 3'b010;
    #2 I = 3'b011;
    #2 I = 3'b100;
    #2 I = 3'b101;
    #2 I = 3'b110;
    #2 I = 3'b111;
  end

  initial begin
    $monitor("time=%0t I=%b O=%b", $time, I, O);
  end

endmodule