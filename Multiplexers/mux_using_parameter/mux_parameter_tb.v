module mux_test;
  reg[dut.N-1:0]I;
  reg [($clog2(dut.N)-1):0]S;
  wire Y;
  mux dut(I,S,Y);
  initial begin
    repeat(10)
      begin
        I=$random;
        S=$random;
        #2;
      end
  end
  initial begin
    $display("=====MUX USING PARAMETER====");
    $monitor("sim time=%0t,I=%b,b=S=%b,Y=%b",$time,I,S,Y);
  end 
endmodule