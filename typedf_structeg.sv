`timescale 1ns / 1ps
module typedf_struct();
typedef struct {string name;
int roll_no; string classes;
int marks[5];
    }student_t; 
    student_t student1,student2;
    initial begin
    student1.roll_no=68;
    student1.name="neeraj";
    student1.classes="12th";
    student1.marks[0]=45;
    student1.marks[1]=34;
    student1.marks[2]=75;

  $display("-----Student1 details-----");
  
 $display("name:%s class:%s roll_no:%0d",student1.name,student1.classes,student1.roll_no); 
  $display("maths:%0d \n science:%0d \n hindi:%0d",student1.marks[0],student1.marks[1],student1.marks[2]);

 $display("\n");
    student2.marks[0]=76;
    student2.marks[1]=35;
    student2.marks[2]=34;
 student2.roll_no=69;
   $display("-----Student2 details-----");
     student2.name="dheeraj";
     student2.classes="11th";
      $display("name:%s class:%s roll_no:%0d",student2.name,student2.classes,student2.roll_no); 
      $display("maths:%0d \n science:%0d \n hindi:%0d",student2.marks[0],student2.marks[1],student2.marks[2]);

    end
endmodule
