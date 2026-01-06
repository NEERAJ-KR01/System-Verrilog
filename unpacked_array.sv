
module unpacked;
  bit[3:0][7:0]a;
  bit[31:0]b;
  initial begin
    a[3][0]=1'b1;
    b[24]=1'b1;
    $display(a);
    $display(b);
    $display("a=%b",a);
    $display("b=%b",b);
    a[3][7]=1;
    $display("a=%b\t%d",a,a);
    a[2]=8'b10000001; //row 2 8th nd 1 bit
    $display("a=%b",a);
    a[1]=8'h81; //row 1 8th nd 1 bit
    $display("a=%b",a);
  end
endmodule
