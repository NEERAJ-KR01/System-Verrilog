module function_detailed;
int tmpz; //to store op
function int sum (input int x,y);
sum=x+y;
$display("sum of values x:%0d y:%0d z:%0d",x,y,sum);
endfunction
initial begin 
tmpz=sum(23,34);//give arguments of values
$display("tmpz %0d",tmpz);
end
endmodule
