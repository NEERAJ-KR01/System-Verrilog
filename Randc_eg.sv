class transection;
randc bit [2:0]a,b,c;//3 bits r set upto 0-7 limit
//ranc not repeated 
 bit [2:0] sum, carry; 
endclass 
module tb;
transection t_h;
initial begin
t_h=new();
repeat(10) begin 
t_h.randomize();
#2;
$display("a:%0d",t_h.a);
  end 
  end
  endmodule
