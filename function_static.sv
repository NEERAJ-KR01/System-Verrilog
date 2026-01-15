module function_static;
int a=25;
function static sum(int a,b=34,c=56);
a=a+a;
$display("from func a is",a);
endfunction
initial begin
 repeat(4) sum(100);         
end
endmodule
