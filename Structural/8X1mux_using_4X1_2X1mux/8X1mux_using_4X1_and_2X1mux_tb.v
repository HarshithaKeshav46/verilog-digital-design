module mux81test;
  reg [7:0]I;
  reg [2:0]S;
  wire Y;
  mux81 dut(I,S,Y);
  initial begin 
   I=8'b1010_1011;
    #5 S=3'b000;
    #5 S=3'b001;
    #5 S=3'b010;
    #5 S=3'b011;
    #5 S=3'b100;
    #5 S=3'b101;
    #5 S=3'b110;
    #5 S=3'b111;
  end
  initial begin
    $monitor("sim time=%0t,I=%b,S=%b,Y=%b",$time,I,S,Y);
  end
endmodule