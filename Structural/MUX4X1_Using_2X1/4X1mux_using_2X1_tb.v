module mux_41test;
  reg i0,i1,i2,i3,s0,s1;
  wire y;
  integer i;
  mux_41 dut(i0,i1,i2,i3,s0,s1,y);
  initial begin 
    for(i=0;i<2**6;i=i+1)
      begin 
        {i0,i1,i2,i3,s0,s1}=i;
        #2;
      end 
  end
  initial begin
    $monitor("sim time=%0t,i0=%b,i1=%b,i2=%b,i3=%b,s0=%b,s1=%b,y=%b",$time,i0,i1,i2,i3,s0,s1,y);
  end
endmodule