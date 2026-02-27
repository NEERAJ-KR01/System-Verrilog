virtual class A ;
 int a,b,c;
 function dsp();
  $display("I am from class A");
  endfunction
 endclass
 
 class A_copy extends A;
 endclass 
 module tb;
 A_copy a_h;
 initial begin
 a_h=new();
 a_h.dsp();
 a_h.a=2;
 a_h.b=3;
 a_h.c=4;
 $display("a_h.a,a_h.b,a_h.c");
 end endmodule 
