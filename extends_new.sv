class A ;
  int a,b,c ;
   function new();
     $display("i am parent class A");
  endfunction 
endclass 
class B extends A;
  int a, x,y,z;
 
endclass
module tb;
   A a_h;
    B b_h;
  initial begin 
   
  //  a_h=new(); //ep: 2 times call function new op:
    b_h=new();// power of " new and extends"
  end 
endmodule
    
    
