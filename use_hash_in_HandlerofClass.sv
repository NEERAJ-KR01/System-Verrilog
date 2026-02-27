class A #(int t=4);

function dsp();
 $display("i am from class A and parameter t: %0d",t);
 endfunction endclass 
 module tb;
 A #(5)a_h;
 A #(45)a_h1;
  initial begin
  a_h=new();
  a_h.dsp();
  a_h1.dsp();
  end 
  endmodule
