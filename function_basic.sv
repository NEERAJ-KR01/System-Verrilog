module function_detailed;
function sum ();
int x,y,z;
x=23;
y=37;
z=x+y;
$display("sum of values x:%0d y:%0d z:%0d",x,y,z);
endfunction
initial begin 
sum();
end
endmodule
