class A;
int a,b,c;
endclass
module tb;
A a_h1,a_h2;
int i,j,k;
initial begin
a_h1=new();
a_h1.a=20;
a_h1.b=30;
a_h2=new();
a_h2=a_h1;
a_h2.a=40;
$display(a_h2.a);
a_h1.a=80;
$display(a_h1.a);
end
endmodule
