class transection ;
 rand bit[4:0] hr; //12hr
 rand bit[5:0] min, sec;
 constraint cnstrnt
 { hr < 12 ;
   min < 60;
   sec <60;
 }
  function  void post_randomize();
    $display("Time:: hr:%0d min:%0d sec:%0d", hr,min,sec);
   endfunction
   endclass
   module tb;
  transection t_h;
  initial begin
  t_h=new();
      repeat(6) t_h.randomize();
  end 
  endmodule
