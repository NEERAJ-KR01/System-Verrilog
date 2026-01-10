`timescale 1ns / 1ps
module associative_array02();
int mem[int];
int tmp;
initial begin
mem[3]=46;
mem[15]=76;
mem[25]=45;
mem[33]=34;
mem[32]=33;
mem.last(tmp);
$display("tmp:",tmp);
mem.first(tmp);
$display("tmp 1st:",tmp); //exp: 3
mem.prev(tmp); //failed,no value behind 1st val //exp: 3
$display("tmp:",tmp);//ep: 3
mem.next(tmp);
$display("tmp:",tmp);//exp: 15
$display("Total:%3d",mem.num());
$display("%p",mem);
$display("%p",mem[3]);
end
endmodule
