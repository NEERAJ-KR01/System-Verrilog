module datatype_$_bits;
 bit [3:0][7:0]a; //8bt--4times
 bit[31:0]b;
 bit[7:0]c[3:0]; //8bt--4times
 initial begin 
 a[3]=8'b11111111;
 b[20]=1'b1;
 c[3][0]=1'b1;
 $display($bits(a[3]),$bits(b[20]),$bits(c[0]));//ep: 8, 1,8
 $display($bits(a),$bits(b),$bits(c));//ep: 32 ,32
 end
endmodule
