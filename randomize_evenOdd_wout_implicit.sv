class transection ;
  rand bit[3:0] a;
  bit even, odd;
  constraint cnst { if(even==1 && odd==0)
    (a%2==0);
                   else if (odd==1 && even==0)
                     (a%2==1);
  					}
function void post_randomize();
 $display("a=%0d even:%0d odd:%0d",a,even,odd);
  endfunction
endclass

module tb;
transection t_h;
initial begin 
t_h=new ();
$display("---Only even=1----");
 t_h.even=1;
  t_h.odd=0;
repeat(5) t_h.randomize();
$display("---Only odd=1----");
  t_h.even=0;
  t_h.odd=1;
repeat(5) t_h.randomize();

end endmodule
