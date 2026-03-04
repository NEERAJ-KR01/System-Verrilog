module semaphore_basic;
  semaphore sem;
  initial begin 
    sem=new(1);
    fork 
      //Thread 1
      begin 
        $display("[%0t] Thread 1: trying to get key",$time);
        sem.get(1);
        $display("[%0t] Thread 1: got key",$time);
        #10
        sem.put(1);
        $display("[%0t] Thread 1: trying to give 1 key",$time);
      end
      //Thread 2 
     begin
       #1
       $display("[%0t] Thread 2: trying to get key",$time);
       sem.get(1);
       $display("[%0t] Thread 2: got key",$time);
       #10
       sem.put(1);
       $display("[%0t] Thread 2: trying to return one key",$time);
     end      
    join
      $display("Both keys work very well");

  end
endmodule
