interface intf();
  logic a,b;
  logic sum, carry;
endinterface 

module dut(intf wire_h);
 assign wire_h.sum=wire_h.a ^ wire_h.b;
  assign wire_h.carry=wire_h.a & wire_h.b;
endmodule
  
module tb (intf wire_h);
  initial begin
    $monitor("time=%0t a:%b b:%b | sum:%b carry:%b",$time,wire_h.a,wire_h.b,wire_h.sum,wire_h.carry);
    #2 {wire_h.a, wire_h.b}=2'b00;
    #2  {wire_h.a, wire_h.b}=2'b01;
    #2  {wire_h.a, wire_h.b}=2'b10;
    #2 {wire_h.a, wire_h.b}=2'b11;
    
    #10 $display("Simulation finished");
    $finish;
  end
    endmodule

module top();
  intf IF();
  dut D0(.wire_h(IF));
  tb T0(.wire_h(IF));
endmodule
