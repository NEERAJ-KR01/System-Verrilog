module fork_join_any;
  initial begin
    
       fork 
       #20 $display("THREAD A");
       #10 $display("THREAD B");
       #15 $display("THREAD C");
       join_any
       #5 $display("THREAD D");
           end
endmodule   
