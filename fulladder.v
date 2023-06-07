module half_addr(X,Y,S,C);
   input X,Y;
   output S,C;

   wire S;
   wire C;

   assign S=X^Y;
   assign C=X&Y;
endmodule

module full_addr(a,b,sum,cin,carry);
  input[1:0] a,b;
  input cin;
  output [1:0] sum;
  output carry;

  wire c0,c1,c2,c3,c4;
  wire s0,s1;

  half_addr H1 (a[0],b[0],s0,c0);
  half_addr H2 (s0,cin,sum[0],c1);           //c0 or c1 gives c2
  or G1 (c2,c1,c0);
  half_addr H3 (a[1],b[1],s1,c3);   
  half_addr H4 (s1,c2,sum[1],c4);            //c3 or c4 gives carry 
  or G2 (carry,c3,c4);
endmodule 