module decoder4X16_tb;
  reg [3:0]I;
  wire [15:0]O;
  decoder4X16 dut (I,O);
  initial 
    begin
      repeat(10)
        begin
          I=$random;
          #2;
        end
    end
  initial 
    begin
      $monitor("sim time=%0t,I=%b,O=%b",$time,I,O);
    end
endmodule