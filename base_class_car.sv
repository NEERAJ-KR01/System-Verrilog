class car ;
int speed;
string color ;
function void show();
$display("speed:%0d | color:%0d",speed,color);
endfunction
endclass
module tb;
car c1,c2;
initial begin
c1=new();
c2=new();
c1.speed=80;
c1.color="Red";
c2.speed=70;
c2.color="Blue";
c1.show;
c2.show;
end
endmodule
