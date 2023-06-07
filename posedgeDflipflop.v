module dff(q,d,clk,rst);
   input d,clk,rst;
   output q;
   reg q;

// for positive triggered, q=d;
   always @(posedge clk)
    begin
      if (rst == 1'b1) q <= 1'b0;
      else             q <= d;
    end
endmodule
