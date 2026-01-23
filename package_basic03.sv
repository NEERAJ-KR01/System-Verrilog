`timescale 1ns / 1ps

package pkg;   // global container
int no_of_trans;
function void display(string s);
    $display($time,"%s,n=%0d",s,no_of_trans);
    endfunction
endpackage

module mem;
import pkg::*;
initial begin
#1;
        no_of_trans=10;
#5;         // 1+5=6ns
  display("ns\t from module mem");
end
endmodule : mem

module cpu;
 import pkg::*;
 initial begin
 #2;
   display("ns\t from module cpu");
#3;		//2+3=5ns
        no_of_trans=20; //5ns
 end
 endmodule: cpu
