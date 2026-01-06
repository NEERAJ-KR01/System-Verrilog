
module unpacked;
  bit[3:0][7:0]a;
  bit[31:0]b;
  initial begin
    a[3][0]=1'b1;
    b[24]=1'b1;
    $display(a);
    $display(b);
  end
endmodule
