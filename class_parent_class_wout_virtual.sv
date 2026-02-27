class A;
int a,b,c;

 function dsp();   
 $display("i am from parent");
 endfunction endclass 
 
 class B extends A;
function dsp();
 $display("i am from child");
 endfunction
 endclass
module tb ; 
A a_h;
B b_h;
initial begin
a_h=new();
b_h=new();
a_h=b_h;
a_h.dsp();
end endmodule
