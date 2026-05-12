module max_tb;
  reg [1:0]a,b,c;
  wire [1:0]y;
  max dut(a,b,c,y);
  initial
    begin
      repeat(5)
        begin
          a=$random;
          b=$random;
          c=$random;
          #2;
        end
    end
  initial 
    begin
      $monitor("sim time=%0t,a=%d,b=%d,c=%d,y=%d",$time,a,b,c,y);
    end
endmodule