`timescale 1ns / 1ps

package pkg;   // global container
  int a;
endpackage

module tb1;
  import pkg::*;
  initial begin
    a = 5;
    #5;
    $display("from tb1 gave a=5 and getting a=%0d", pkg::a);
  end
endmodule
 
module tb2;
  import pkg::*;   
  initial begin
    $display("from tb2 did not give value and getting a=%0d", pkg::a);
    #2;
    pkg::a = 15;
  end
endmodule
 
module top;
  tb1 i_tb1();
  tb2 i_tb2();
endmodule
