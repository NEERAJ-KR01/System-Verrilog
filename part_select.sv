module part_sel;
 bit [3:0][7:0]a;
 initial begin 
 a[3][3:0]=8'b11111111; //part select[3:0] out of 8bt
 $display("%b",a); //expected op: "1111" outoff "11111111"
 end
endmodule
