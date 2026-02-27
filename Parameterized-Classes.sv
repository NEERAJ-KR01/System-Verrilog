class A #(type T=bit);
T a,b,c;
 function dsp();
  $display("I am from class and parameter T",$typename(T));
  endfunction endclass
   module tb;
   A #(int)a_h;
   A #(string)a_h1;
   initial begin
   a_h1=new();
   a_h=new();
   a_h.a=4;
   a_h1.a="anuj";
   $display("a from a_h with int type",a_h.a);
      $display("a from a_h1 with string type \t",a_h1.a);
      end endmodule  

   
