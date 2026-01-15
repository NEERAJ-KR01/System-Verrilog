module function_automatic;
int a=25;
// WITH "AUTOMATIC"
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
