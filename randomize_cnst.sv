class watch ;
 rand bit[4:0] Hr; //12hr
 rand bit[5:0] Min, Sec;
 int hr_angle;
 constraint cnst1 {Hr<=12; Min<=60; Sec<=Min; } 
  function  void post_randomize();
    hr_angle = Hr * 30;
    $display("After Randomization:: hr:%0d min:%0d sec:%0d angle:%0d", Hr,Min,Sec,hr_angle);
   endfunction
   endclass
   
   class watch_ex extends watch; 
   constraint cnst1 {Hr>=13;}
   endclass 
   
   module tb;
  watch_ex t_h;
  initial begin
  t_h=new();
      repeat(6) t_h.randomize();
  end 
  endmodule
