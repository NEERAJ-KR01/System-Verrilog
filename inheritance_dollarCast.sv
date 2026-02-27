class parent ;
int p_data=100;
virtual function void dsp();
$display("parent function %0d",p_data);
endfunction endclass
class child extends parent;
int c_data=200;
function void dsp();
$display("child function p_data: %0d | c_data:%0d",p_data,c_data);
endfunction endclass 

module tb ;
parent p_h;
child c_h1, c_h2;
initial begin 
 p_h=new();
 c_h1=new();
 c_h2=new();
 p_h = c_h1; // valid compiler 
 p_h.dsp();
 //c_h2=p_h; X-downcasting-X dont do wout "$cast"
 if($cast(c_h2,p_h))begin
    $display("$cast are working with downcasting now u can use c_h2.dsp");
    c_h2.dsp();
    end else $display("$cast are failed");
 end 
 endmodule 
