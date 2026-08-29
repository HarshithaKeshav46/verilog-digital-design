module piso_test;
  reg clk,rst,load;
  reg [3:0] pi;
  wire so;

  piso dut(clk,rst,load,pi,so);

  initial begin 
    clk=0;
    rst=0;
    load=0;
    pi=4'b0000;

    #5 rst=1;

    // Load parallel data
    #2 load=1;
       pi=4'b1011;

    // Start shifting
    #4 load=0;

    // Shift out
    #20;

    // Load another data
    load=1;
    pi=4'b1101;

    #4 load=0;

    // Shift out
    #20;

    $finish;
  end

  always #2 clk=~clk;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,piso_test);
  end

endmodule