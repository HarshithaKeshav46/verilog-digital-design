module mux16test;
  reg [15:0]I;
  reg [3:0]S;
  wire Y;
  mux16 dut(I,S,Y);
  initial begin 
   I=16'b1111_1010_1011_1000;
    #1 S=4'b0000;
    #1 S=4'b0001;
    #1 S=4'b0010;
    #1 S=4'b0011;
    #1 S=4'b0100;
    #1 S=4'b0101;
    #1 S=4'b0110;
    #1 S=4'b0111;
    #1 S=4'b1000;
    #1 S=4'b1001;
    #1 S=4'b1010;
    #1 S=4'b1011;
    #1 S=4'b1100;
    #1 S=4'b1101;
    #1 S=4'b1110;
    #1 S=4'b1111;
  end
  initial begin
    $monitor("sim time=%0t,I=%b,S=%b,Y=%b",$time,I,S,Y);
  end
endmodule