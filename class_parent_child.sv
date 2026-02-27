class parent ;
  int id;
  function new(int p_id);
    id=p_id;
    $display("A parent class id ",p_id);
  endfunction endclass

class Child extends parent;
  int data;
  function new(int p_val, c_val);
   super.new(p_val);
    data=c_val;
    $display("2. Child Constructor chal gaya Data = %0d", c_val);
  endfunction endclass
module tb;
  Child c_h;
  initial begin 
    $display("----start forming object-----");
    c_h=new(40,50);
  end endmodule
    
