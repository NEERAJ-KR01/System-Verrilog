class Tx;
int i=25;
mailbox #(int) mbx1;
function  new(mailbox #(int) mbx);
mbx1=mbx; 
endfunction
task tx();
mbx1.put(i);
endtask
endclass 

class Rx;
int i;
mailbox #(int) mbx2;
function new(mailbox #(int) mbx);
mbx2=mbx;
endfunction
task rx();
  mbx2.get(i);
endtask
endclass 

module tb;
Tx t_h; 
Rx r_h;
mailbox #(int) mbx;
initial begin
mbx=new();
t_h=new(mbx); r_h=new(mbx);
$display("i from Tx=%0d",t_h.i);
t_h.tx();
r_h.rx();
$display("i from Rx=%0d",r_h.i);
end
endmodule 
