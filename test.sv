`timescale 1ns / 1ps
module test();
int ma=20; // ma: global variable
function void pass_by_value(int fa);
fa=fa*2; // fa copy of ma  
$display("Inside the function pass by value fa=%0d",fa);
endfunction: pass_by_value
 //ref use as a pointer & ma,fa share same memory adress value
function automatic void pass_by_ref (ref int fa);
fa=fa*2; //  ref: fa=ma not copy both has same address
$display("inside the function pass by ref fa=%0d",fa);
endfunction: pass_by_ref
initial begin  //ref as a pointer 
pass_by_value (ma); // fa:40 but ma:20
$display("after calling the function pass by value ma=%0d",ma);
pass_by_ref(ma);
$display("after calling the function pass by ref ma=%0d",ma);
end            //here ref: fa=ma=40
endmodule:test

