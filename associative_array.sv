`timescale 1ns / 1ps
module associative_array();
int mem[int];
initial begin
mem[3]=46;
mem[15]=76;
$display("mem[3]=%0d | mem[15]=%0d | mem[34]=%0d",mem[3],mem[15],mem[34]); //ep: 46|76|0
foreach(mem[i])$display("mem[%0d]",mem[i]); 
$display("%p",mem); 
end
endmodule
