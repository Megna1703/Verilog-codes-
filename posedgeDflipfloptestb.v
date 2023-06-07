module testbench2;
  reg d;
  reg clk;
  reg rst;

  wire q;

  dff DUT(q,d,clk,rst);

  initial clk=0;
  always #5 clk = ~clk;
    initial
      begin 
        $dumpfile("posedgeDflipflop.vcd"); //for dumping the file foe gtkwavesimulation
        $dumpvars(0,testbench2);
        $monitor($time,"q=%b,d=%b,rst=%b",q,d,rst);

        #5  d=1; rst=1;
        #10 d=0; rst=0;
        #10 d=0; rst=0;
        #10 d=1; rst=0;        //the testbench shows results only for t @ 0,5,15 and 35
        #15 $finish;           //@ t=25 the value didn't change so it didn't show in the results
      end                      //if you want to show results for @t=25 too, then use $display
endmodule
      