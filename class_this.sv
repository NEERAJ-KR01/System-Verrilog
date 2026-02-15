`timescale 1ns / 1ps
class A;
int a,b,c ;
function int dsp(input int t);
int a,b,c; 
 a=t;
this.a=a; return t;
 endfunction 
endclass
module feb15();
A a_h1, a_h2;
int a,b,c;
initial begin 
  a_h1=new();
  a_h1.dsp(40);
  $display(a_h1.dsp(40));
  a_h2=new();
  a_h2.dsp(80);
    $display(a_h2.dsp(80));
  end
endmodule
