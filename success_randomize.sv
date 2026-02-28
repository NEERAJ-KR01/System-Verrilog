class transection ;
 rand bit[2:0] a,b,c;
 int sum, carry;
 function void pre_randomize();
    $display("Before:: a:%0d b:%0d c:%0d", a,b,c);
    endfunction 
  function  void post_randomize();
    $display("AFTER:: a:%0d b:%0d c:%0d", a,b,c);
   endfunction
   endclass
   module tb;
   int success=0;
  transection t_h;
  initial begin
  t_h=new();
    success=t_h.randomize();
    $display("success: %0d",success);
  end 
  endmodule
