class Tx;//Transmitter 
int data =24;
mailbox #(int) mbx1;
  //constructor
function new (mailbox #(int) mbx);
  mbx1=mbx;
endfunction

task tx ();
  //.put() inbuilt in mailbox
  mbx1.put(data);
  $display("[%0t] Tx ka data :%0d mene pipeline me daal diya",$time,data);
endtask
endclass

class Rx; //Reciever
  int data;
  mailbox #(int) mbx2;
  function new(mailbox #(int) mbx);
    mbx2=mbx;
  endfunction 
  task rx;
    //.get() inbuilt in mailbox
    mbx2.get(data); //inbuilt
    $display("[%0t] Rx ne data :%0d pipeline se nikal liya hai",$time,data);
  endtask 
endclass
module tb;
Tx t_h;
Rx r_h;
mailbox #(int) mbx;
initial begin
  mbx=new();
  t_h=new(mbx); r_h=new(mbx);
  $display("im from Tx",t_h.data);
  t_h.tx();
  r_h.rx();
  $display("im from Rx",r_h.data);
end endmodule
  
  
