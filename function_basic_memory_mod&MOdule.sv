module function_basic_memory_mod&MOdule;
int a=23,y,tmpz;
function int sum(int a=63);
int x=63,y,z;
$display("from func x is",x);
$display("from func a is",a);

endfunction
initial begin
sum;
$display("from mod a is",a);
end
endmodule
