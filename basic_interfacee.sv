interface switch_link;
logic on_off;
endinterface 

module switch (switch_link if_h);
initial begin
if_h.on_off=0;
$display("Switch is OFF");
#10
if_h.on_off=1;
$display("Switch is ON");
#10
if_h.on_off=0;
$display("Switch is OFF");
end
endmodule

module Bulb (switch_link if_h);
always@(if_h.on_off==1)begin
if (if_h.on_off==1)  
$display("time:%0t | Bulb is glowing ",$time);
else $display("time:%0t bulb is not glowing",$time);
end
endmodule

module top();
switch_link cables();
switch s1(cables);
Bulb b1(cables);
endmodule
