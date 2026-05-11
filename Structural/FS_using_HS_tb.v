module FS_test;
  reg a,b,c;
  wire diff,borrow;
  FS dut(a,b,c,diff,borrow);
  initial begin 
    a=0;b=0;c=0;
    #2 a=0;b=0;c=1;
    #2 a=0;b=1;c=0;
    #2 a=0;b=1;c=1;
    #2 a=1;b=0;c=0;
    #2 a=1;b=0;c=1;
    #2 a=1;b=1;c=0;
    #2 a=1;b=1;c=1;
  end
  initial begin
    $monitor("sim time=%0t,a=%b |,b=%b |,c=%b |,Difference=%b |,Borrow=%b |",$time,a,b,c,diff,borrow);
  end
endmodule