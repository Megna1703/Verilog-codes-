module testbench1;
    reg[1:0] a,b;
    reg cin;
    wire [1:0] sum;
    wire carry;
    full_addr DUT(a,b,sum,cin,carry);

     initial
       begin
         $dumpfile("fulladder.vcd"); //for dumping the file foe gtkwavesimulation
         $dumpvars(0,testbench1);
         $monitor($time,"a=%b,b=%b,sum=%b,cin=%b,carry=%b",a,b,sum,cin,carry);
         #10 a=00;b=01;cin=0;
         #10 a=01;b=00;cin=1;
         #10 a=10;b=10;cin=1;
         #10 a=00;b=00;cin=0;
         #10 $finish;
       end
endmodule 
