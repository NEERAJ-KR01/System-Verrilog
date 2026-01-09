`timescale 1ns / 1ps
module Dynamic_array01();
byte da[]; //8 bit wide @ n loc dynamic array
initial begin
  da=new[5]; //5rooms-8bt
  da[4]=8'd24; 
  da[2]=8'd56;
  da[0]=8'd67;
  $display("value:%b \t %b \t %b",da[4],da[2],da[0]);
  foreach(da[i])begin
    $display("room:%d,%b",i,da[i]);
  end
  end
endmodule
