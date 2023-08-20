module gray(clk,gval);
  parameter n=3;
  input clk;
  reg [n-1:0] val=0;
  output reg [n-1:0] gval=0;
  integer i,j;
  always @(posedge clk) begin
    //if (!reset) begin
    //val<=0;
    //end
    //else val <=val +1;
    for (i = 0; i < 2**n ; i=i+1) begin
      for (j = 0; j < n-1 ;j=j+1 ) begin
        gval[j] = val[j]^val[j+1];
        gval[n-1] =val[n-1];
      end
      $display("Binary val=%b,Gray value =%b",val,gval);
      val = val +1;
    end
  end
endmodule 
   