interface intf();
  logic a,b,c,sum,carry;
  modport DUT (input a,b, output sum,carry);
  modport TB (output a,b, input sum , carry);
endinterface 

module dut(intf.DUT intf_h);
  assign intf_h.sum=intf_h.a^intf_h.b;
  assign intf_h.carry=intf_h.a&&intf_h.b;
endmodule 

module tb (intf.TB intf_h);
  initial begin
    $monitor("values are a:%b b:%b | sum:%b carry:%b",intf_h.a,intf_h.b,intf_h.sum,intf_h.carry);
     #2 {intf_h.a , intf_h.b }=0;
     #2 {intf_h.a , intf_h.b }=1;
     #2 {intf_h.a , intf_h.b }=2;
     #2 {intf_h.a , intf_h.b }=3;
  end
endmodule

module top();
  intf IF();
  dut  D0(IF);
  tb TO(IF);
endmodule
