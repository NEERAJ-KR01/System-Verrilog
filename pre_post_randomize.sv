class transection ;
 rand bit[2:0] a,b,c;
 int sum, carry;
 function void pre_randomize();
    $display("1. Start ");
    endfunction 
  function  void post_randomize();
   $display("2. put values of contraints");
   sum=a+b+c;
   endfunction
   endclass
   module tb;
  transection t_h;
  initial begin
  t_h=new();
  repeat(3)begin
    if(t_h.randomize() == 1) begin 
  $display("3. a:%0d b:%0d c:%0d sum:%0d",t_h.a,t_h.b, t_h.c, t_h.sum);
  end else  $display("4. Error");
  end end 
  endmodule
