`timescale 1ns / 1ps
module typedf_struct();
typedef struct {string name;
int roll_no; string classes;
    }student_t; 
    student_t student1,student2;
    initial begin
    student1.roll_no=68;
    student1.name="neeraj";
    student1.classes="12th";
 $display("name:%s class:%s roll_no:%0d",student1.name,student1.classes,student1.roll_no); 
 $display("\n");
 student2.roll_no=69;
     student2.name="dheeraj";
     student2.classes="11th";
      $display("name:%s class:%s roll_no:%0d",student2.name,student2.classes,student2.roll_no); 
    end
endmodule
