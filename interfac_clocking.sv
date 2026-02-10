interface mem_if(input bit clk);
  logic[7:0]data_in,data_out;
  logic write_en;
  clocking drv_cb @(posedge clk);
    default input #2 output #2;
    output write_en, data_in;
    input data_out;
  endclocking
endinterface 
module testbench (mem_if if_h);
  initial begin
  if_h.drv_cb.write_en <=0;
  if_h.drv_cb.data_in <=0;
    @(if_h.drv_cb);
  if_h.drv_cb.data_in <=8'hff;
    if_h.drv_cb.write_en <=1;
    $display("time:%0t command sent",$time);
    @(if_h.drv_cb);
    if_h.drv_cb.write_en <=0;
$display("[Time %0t] Read Data: %h ", $time, if_h.drv_cb.data_out);
    #20; 
    $finish;
  end
endmodule

module top ;
  bit clk =0;
  always #5 clk=~clk;
  mem_if intf(clk);
  testbench t0(.if_h(intf));
  assign intf.data_out=8'hff;//mimic dut
endmodule 
