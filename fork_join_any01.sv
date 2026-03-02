module fork_join_any;
  initial begin
    #5; 
       fork 
       begin
#10 $display(" time:%0t T1",$time);//15 
 #5  $display(" time:%0t T2",$time);//20
     end
      #12 $display("  time:%0t T3",$time);//17
       join_any
      $display(" time:%0t T4",$time);//15
       end
endmodule   
