module encoder42_test;
  reg D3,D2,D1,D0;
  wire Y1,Y0;
  encoder42 dut(D3,D2,D1,D0,Y1,Y0);
  initial begin
    D3=0;D2=0;D1=0;D0=1;
    #2 D3=0;D2=0;D1=1;
    #2 D3=0;D2=1;
    #2 D3=1;
   
  end
  initial begin
    $monitor("sim time=%0t,D3=%b,D2=%b,D1=%b,D0=%b,Y1=%b,Y0=%b",$time,D3,D2,D1,D0,Y1,Y0);
  end
endmodule