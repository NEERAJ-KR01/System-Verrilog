class transection ;
 rand bit[4:0] hr; //12hr
 rand bit[5:0] min, sec;
 int hr_angle;
 constraint cnsthr {hr <=60;}
 constraint cnstmin {min <=60;}
 constraint cnstsec {sec <=60;}
  function  void post_randomize();
    hr_angle = hr * 30;
    $display("Time:: hr:%0d min:%0d sec:%0d angle:%0d", hr,min,sec,hr_angle);
   endfunction
   endclass
   module tb;
  transection t_h;
  initial begin
  t_h=new();
      repeat(6) t_h.randomize();
  end 
  endmodule
