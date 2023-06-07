module half_addr(X,Y,S,C);
   input X,Y;
   output S,C;

   wire S;
   wire C;

   assign S=X^Y;
   assign C=X&Y;
endmodule
