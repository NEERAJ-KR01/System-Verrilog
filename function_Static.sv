module function_Static;
int a=25;
// WITHOUT AUTOMATIC KEYWORD WITH "STATIC"
function automatic sum(int b=34,c=56);
 int a;
 a=a+100;
$display("from func a is",a);
endfunction
initial begin
    sum(); 
    sum();         
    sum(); 
    sum();         
    sum();              
end
endmodule
