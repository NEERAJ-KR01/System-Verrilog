class B;
  int x,y,z ;
endclass
class A;
  int a,b,c;
  B sub_h;
  function new ();
    sub_h =new ();
  endfunction 
endclass 
module tb();
  A a_h, b_h;
  A tmpA_h;
  B tmpB_h;
  initial begin 
    a_h= new ();
    a_h.a=20;
    a_h.b=30;
    a_h.c=40;
    
    a_h.sub_h.x=50;
    a_h.sub_h.y=60;
    $display("-----Before deep copy------");
    $display("a_h--> a:%0d, b:%0d, c:%0d",a_h.a,a_h.b,a_h.c);
    $display("a_h.sub_h--> x:%0d y:%0d ",a_h.sub_h.x,a_h.sub_h.y);
    tmpA_h= new ();
    tmpB_h= new ();
    
    tmpA_h.a=a_h.a;
    tmpA_h.b=a_h.b;
    tmpA_h.c=a_h.c;
    
    tmpB_h.x=a_h.sub_h.x;
    tmpB_h.y=a_h.sub_h.y;
  b_h=tmpA_h;
    b_h.sub_h=tmpB_h;
    $display("----After Deepcopy----");
    b_h.a=888;
    b_h.sub_h.x=999;
    $display("check from a_h %0d for verify",a_h.a);
$display("check from a_h.sub_h for verify: %0d (Safe!)", a_h.sub_h.x);    $display("---Now time to come for 'DEEPCOPY'---");
    $display("check from b_h ",b_h.a);
    $display("check from b_h.sub_h", b_h.sub_h.x);
  end 
endmodule 
