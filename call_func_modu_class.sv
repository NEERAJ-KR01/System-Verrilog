class A;
  int i = 20; 
  int b, c;   
  function void dsp();
    int x = 60;
    int y, z;
    $display("Inside Function: x = %0d", x); 
    $display("Inside Function: i = %0d", i); 
  endfunction
endclass
module tb;
  int a = 40; 
  int b, c;
  A a_h; 
  initial begin
    a_h = new();
    $display("Class Variable via Handle: a_h.i = %0d", a_h.i); 
    a_h.dsp();
    $display(a_h.dsp);
  end
endmodule
