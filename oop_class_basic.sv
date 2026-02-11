class cl;
  int i;
  string s;
endclass

module tb;
 
  cl c1, c2, c3; 

  initial begin
    $display("Before construction:", c1, c2, c3);
   
    c1 = new();
    c2 = new();
    c3 = new();
    
    $display("After construction:", c1, c2, c3);
    
    
    c1.i = 40;  
    c2.i = 33;
    
    c2.i = 56; 
    c3.i = 57;
    
    c2.s = "aman";
    
    $display("Final Values: c1:%p c2:%p c3:%p", c1, c2, c3);
  end
endmodule
