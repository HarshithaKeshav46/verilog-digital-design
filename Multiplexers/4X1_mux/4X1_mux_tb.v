module mux41test;
  reg [3:0]I;
  reg [1:0]S;
  wire Y;
  mux41 dut(I,S,Y);

    initial begin
      repeat(8)
      begin
        I=$random;
        S=$random;
   
        #2;
      end
  
  end
  initial begin
    $monitor("sim time=%0t,I=%b,S=%b,Y=%b",$time,I,S,Y);
  end
endmodule