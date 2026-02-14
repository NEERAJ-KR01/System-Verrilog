class B;
int a,b,c;
function int dsp(input int b);
int a;
a=b;
return b;
endfunction endclass

class A;
int a,b,c; 
function int dsp(input int b);
int a,j,k;
a=b; 
 return b;
 endfunction
endclass
module tb;
function int dsp(input int b);
int a,l,m;
a=b;  //this code tells class function same      
return b; endfunction //varaible a,b,c has different 
int a,b,c;          //memory 
A a_h1,a_h2; //a_h handler
B b_h1;
initial begin
a=40;
$display("Module Variable a: %0d", a);a_h1=new();
a_h1.a=70;
$display("Class Variable x: %0d", a_h1.a);
a_h1.dsp(20);
$display("----outside module func module dsp class A----%1d", a_h1.dsp(20));
//without handler a_h call mon
$display("---inside Module func dsp---%1d",dsp(50));//module dsp not func
b_h1.dsp(30);
$display("----outside module func module class B dsp----%1d", b_h1.dsp(20));
end endmodule

