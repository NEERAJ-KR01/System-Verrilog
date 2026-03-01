// in-line constraint 
class transection ;
rand bit[5:0] a;
constraint cnst { a inside  {1,3, [10:20], 22};   };
function void post_randomize();
 $display("a=%0d",a);
  endfunction
endclass
module tb;
transection t_h;
initial begin 
t_h=new ();
 $display("----Normal Constraint----");
repeat(3) t_h.randomize();
 $display("----in-line Constraint----");
t_h.randomize() with { a == 11; }; 
end endmodule
