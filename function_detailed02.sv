module function_detailed;
int tmpz; //to store op
function sum (input int x,y , output z);
z=x+y;
$display("sum of values x:%0d y:%0d z:%0d",x,y,z);
endfunction
initial begin 
sum(23,34,tmpz);//give arguments to values
end
endmodule
