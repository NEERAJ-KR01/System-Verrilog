`timescale 1ns / 1ps

package pkg; //global constant
int a;
endpackage

module tb1;
import pkg::*;
initial begin
a=5;
#5;
$display("from tb1 gave a=5 and gettig a=%0d",a);
end
endmodule
