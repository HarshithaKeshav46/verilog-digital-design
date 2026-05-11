module RCA_test;
  reg [3:0]a,b;
  reg cin;
  wire [3:0]s;
  wire cout;
  RCA dut(a,b,cin,s,cout);
  initial begin 
    a = 4'b1010;
        b = 4'b0110;
        cin = 0;

        #2 a = 4'b0011;
        b = 4'b0101;
        cin = 0;

        #2 a = 4'b1111;
        b = 4'b0001;
        cin = 0;

        #2 $finish;
    
  end
  initial begin
    $monitor("sim time=%0t,a=%b,b=%b,cin=%b,sum=%b,carry=%b",$time,a,b,cin,s,cout);
  end
endmodule