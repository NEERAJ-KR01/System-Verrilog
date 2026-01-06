module percentp;
 struct {
  int id;
  int marks;
} student;
initial begin
  student.id = 101;
  student.marks = 88;
  $display("Student = %p", student);
end
endmodule
