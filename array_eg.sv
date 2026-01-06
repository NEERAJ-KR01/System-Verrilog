
module unpacked;
  int cinema_seats[3][2];
initial begin
  cinema_seats= '{'{10,20},'{30,40},'{45,50}};
  $display("value %d %d %d %d",cinema_seats[0][0],cinema_seats[0][1],cinema_seats[2][0],cinema_seats[2][1]);
  
  end
endmodule
