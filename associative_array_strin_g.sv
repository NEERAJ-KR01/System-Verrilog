`timescale 1ns / 1ps
module associative_array_strin_g();
int name[string];
initial begin
name["hari"]=46;
name["ram"]=76;
$display("name[hari]=%0d | name[ram]=%0d | name[shyam]=%0d",name["hari"],name["ram"],name["shyam"]); //ep46|76|0 
foreach(name[i])$display("name[%0d]",name[i]); 
$display("%p",name); 
end
endmodule
