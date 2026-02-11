class car ;
string color;
int speed;
 function new(int s, string c);
 speed = s;
 color = c;
 endfunction
 function void show();
 $display("speed:%d | color:%s",speed,color);
 endfunction
endclass
module tb;
car c1,c2;
initial begin
c1=new(80,"Red");
c2=new(45,"Blue");
c1.show();
c2.show();
end
endmodule
