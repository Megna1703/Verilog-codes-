module test#(parameter n=3);
 reg clk;
 wire [n-1:0] gval;

 gray G(clk,gval);
 initial begin
    clk=0;
    #5 clk=~clk;
    #10 $finish ;
 end
endmodule 