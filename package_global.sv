`timescale 1ns / 1ps
package mess_pkg;
parameter int namak_quantity=10;
 typedef enum{roti,daal,chawal}menu_t;
 
 function string check_food();
 return "Tasty food";
 endfunction
endpackage 

module student_1;
import mess_pkg::*;
initial begin
menu_t lunch=roti;
$display("Student 1 is eating %s, it is%s",lunch.name(),check_food());
end
endmodule

module student_2;
initial begin
int kitna_namak=mess_pkg::namak_quantity;
  $display("student 2 ko %0dgm namake mila",kitna_namak);
end
endmodule
