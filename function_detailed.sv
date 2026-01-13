module function_detailed;
int res; //res is temporary reg or storage for further use 
function int sum_of_two_numbers(input int a,b);
return a+b;
endfunction
function void print_logo();
$display("------System Verilog-------");
endfunction
//function always call in initial block
initial begin
print_logo; //call void
res=sum_of_two_numbers(50,20); //call int
$display("Sum is %0d:",res);
end
endmodule
