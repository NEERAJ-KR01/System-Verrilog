
module array_eg1_;
  bit[3:0][7:0]a; //32 bit data at 1 add
  bit[31:0]b; //32 bit data pkt at 1 add
  bit[7:0]c[3:0]; // 32 bit memory // 8 bit data at 4 loc
  initial begin
  a=32'd24;
  b=32'd24;
  {c[0],c[1],c[2],c[3]}=32'd24;
  $display("%b",a);
    $display("%b",b);
  $display("%b", {c[0],c[1],c[2],c[3]});
      $display("%p",a);
    $display("%p",b);
    $display("%p",c);
end
endmodule
