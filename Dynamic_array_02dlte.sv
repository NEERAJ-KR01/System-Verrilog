`timescale 1ns / 1ps
module Dynamic_array();
byte da[]; //8 bit wide @ n loc dynamic array
initial begin
da=new[5]; //n=5
foreach(da[i]) begin //da[i]=(i=0; i<=(n-1); i=i+1)
 da[i]=$random;
 $display("room:%d%d%b",i,da[i],da[i]);
end
 $display("Before delete",da.size());
da.delete();
 $display("after delete",da.size());
end
endmodule
