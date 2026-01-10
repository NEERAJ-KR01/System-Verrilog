`timescale 1ns / 1ps
module associative_array01();
int mem[int];
initial begin
mem[3]=46;
mem[15]=76;
if(mem.exists(3))
        $display("mem[3] is exist",mem[3]);
 else          $display("mem[3] is not exist");
if(mem.exists(15)) 
        $display("mem[15} is exist",mem[15]);
else          $display("mem[15] is not exist");
if(mem.exists(25))
        $display("mem[25} is exist",mem[25]);
 else          $display("mem[25] is not exist");
end
endmodule
