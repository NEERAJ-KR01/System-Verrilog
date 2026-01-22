`timescale 1ns / 1ps

module task_automatic;
  task automatic double(input int a, input string s);
    #5; 
    a = a * 2; //   a=4 
    $display($time, " %s : %d", s, a); 
  endtask
  initial begin
    fork
      begin //start 0ns both
        double(5, "from thread 1"); 
      end
      begin //start 0ns both
      #2; //4 0verwrite 5 bcoz static
        double(4, "from thread 2");
      end
    join
  end

endmodule
