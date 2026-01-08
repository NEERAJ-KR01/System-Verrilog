`timescale 1ns / 1ps
module Dynamic_array();
byte a[3:0]; //8 bit wide at 4 loc generally fixed array 
byte da[]; //8 bit wide @ n loc dynamic array
initial begin
$display("before:",da.size()); 
da=new[20]; //20rooms of 8 bits;
da[19]=8'd24; //choose 20th room 11000 bt
$display("after:",da.size(),da[19]);
#5;
da=new[15];
$display("after 5 sec:",da.size());
#5;
da=new[500];
da[22]=8'd37; //choose 21th room 
$display("after 10 sec:",da.size(),da[22]);
end
endmodule
