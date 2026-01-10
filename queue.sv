`timescale 1ns / 1ps
module queue();
int q[$]={1,3,4,5}; //initial gives values
int tmp; //TEMP
initial begin

foreach(q[i])$display("q[%0d]=%d",i,q[i]);
q.insert(1,2);
$display("----After----INSERT");
foreach(q[i])$display("q[%0d]=%d",i,q[i]);
q.push_front(6); //SAME  q.insert(0,6);
$display("----After----PUSH_FRONT");
foreach(q[i])$display("q[%0d]=%d",i,q[i]);
q.pop_front();
$display("----After----POP_FRONT");
foreach(q[i])$display("q[%0d]=%d",i,q[i]);
$display("----After----POP_FRONT_with_TMP %2d",tmp);
tmp=q.pop_front();
foreach(q[i])$display("q[%0d]=%d",i,q[i]);

end
endmodule
