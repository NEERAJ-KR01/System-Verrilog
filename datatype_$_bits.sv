module datatype_$_bits;
 bit [3:0][7:0]a; //8bt--4times
 bit[31:0]b; 
 initial begin 
 a[3]=8'b11111111;
 b[20]=1'b1;
 $display($bits(a[3]),$bits(b[20]));//ep: 8, 1
 $display($bits(a),$bits(b));//ep: 32 ,32
 end
endmodule
