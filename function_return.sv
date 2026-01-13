module function_return;
int tmpz;
function int sum(input int x,y);
$display("before return called");
//return (x+y);// both sum & return
sum=x+y;   // functionality are same
$display("after return called");
$display("sum values from function are x:%0d y:%0d sum:%0d",x,y,sum);
endfunction
initial begin
tmpz=sum(60,40);
 $display("values from module",tmpz);
end
endmodule 
