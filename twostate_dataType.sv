`timescale 1ns / 1ps
module twostate_dataType();
bit[3:0]my_bit;
byte my_byte;
int my_int;
longint my_longint;
initial begin
my_bit=5'h1f; $display("my_bit:%h",my_bit);
my_byte=127+1; $display("my_byte:%d",my_byte);
my_int=2147483647; 
my_longint=my_int+1; $display("my_int:%d ,y_longint %d",my_int,my_longint);
my_longint=2147483648; $display("my_longint %d",my_longint);
end
endmodule
