`timescale 1ns / 1ps
module associative_array03();
int marks[string];
string name;
initial begin
marks["amit"]=33;
marks["aman"]=34;
marks["anuj"]=33;
foreach(marks[name])$display("%s %d",name,marks[name]);
end
endmodule
