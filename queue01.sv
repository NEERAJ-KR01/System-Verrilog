`timescale 1ns / 1ps
module queue();
int q[$]={1,3,4,5}; //initial gives values
initial begin

foreach(q[i])$display("q[%0d]=%0d",i,q[i]);
q.insert(2,q.pop_front()); //exc val at 2nd pos val
$display("----After----");
foreach(q[i])$display("q[%0d]=%0d",i,q[i]);

end
endmodule
