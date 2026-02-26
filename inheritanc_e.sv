class A;
  int a,b,c;
  function new();
    $display("I am from CLASS A"); endfunction
endclass 

class B extends A;
  int a,b,c,x,y,z;
   
endclass

module tb;
  A a_h;
  B b_h;
  initial begin 
    a_h=new();
    b_h=new();
 
    b_h.a=40; //A is inherited 
    b_h.b=50; //B is inherited
    b_h.c=60; //C is inherited
    b_h.x=70;
    b_h.y=80;
    b_h.z=90;
    $display("a_h.a:%0d, a_h.b:%0d, a_h.c:%0d, b_h.a:%0d, b_h.b:%0d  b_h.c:%0d, b_h.x:%0d, b_h.y:%0d, b_h.z:%0d",a_h.a,a_h.b,a_h.c,b_h.a,b_h.b,b_h.c,b_h.x,b_h.y,b_h.z);
    
  end
endmodule
