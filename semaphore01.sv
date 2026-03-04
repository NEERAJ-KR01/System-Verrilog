class Master;
  string name;             
  semaphore bus_key;       

  function new(string n, semaphore s);
    this.name = n;
    this.bus_key = s;      
  endfunction
  
  task access_bus();
    bus_key.get(1);       
    bus_key.put(1); 
  endtask
endclass

module tb;
  Master cpu;
  Master dma;
  semaphore main_sema; 
  
  initial begin
    main_sema = new(1); 
    cpu = new("CPU_Master", main_sema);
    dma = new("DMA_Master", main_sema);
    fork
      cpu.access_bus();
      begin 
        #5;             
        dma.access_bus(); 
      end
    join
  end
endmodule
