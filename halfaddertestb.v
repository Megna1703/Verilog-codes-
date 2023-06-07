module testbench;
     reg X,Y;
     wire S,C;
     half_addr DUT(X,Y,S,C);

     initial
       begin
         $dumpfile("halfadder.vcd"); //for dumping the file foe gtkwavesimulation
         $dumpvars(0,testbench);
         $monitor($time,"X=%b,Y=%b,S=%b,C=%b",X,Y,S,C);
         #5 X=0;Y=0;
         #5 X=0;Y=1;
         #5 X=1;Y=0;
         #5 X=1;Y=1;
         #5 $finish;
       end
endmodule 
