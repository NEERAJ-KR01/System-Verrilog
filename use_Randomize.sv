class transection;
rand bit [2:0]a,b,c;//3 bits r set upto 0-7 limit
int sum, carry;
endclass 

module tb;
transection t_h;
initial begin
t_h=new();
repeat(5) begin 
t_h.randomize();
#2;
$display("a:%0d b:%0d c:%0d sum:%0d carry:%0d",t_h.a,t_h.b,t_h.c,t_h.sum,t_h.carry);
  end 
  end
  endmodule
