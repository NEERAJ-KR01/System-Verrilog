class A;
int a,b,c;
//virtual a special keyword to break "static binding" and 
virtual function dsp();  // turn into dynamic binding 
 $display("i am from parent");
 endfunction endclass 
 
 class B extends A;
virtual function dsp();
 $display("i am from child");
 endfunction
 endclass
module tb ; 
A a_h;
B b_h;
initial begin
a_h=new();
b_h=new();
//a_h=b_h;
a_h.dsp();// child
end endmodule
