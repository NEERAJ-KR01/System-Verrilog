`timescale 1ns / 1ps
module task_traffic_control();
int my_signal=0;
task traffic_control(input int delay_time , output int signal_status );
$display("light turned REd at time: %0t",$time);
#delay_time;
signal_status=1;
$display("light turned Green at time: %0t",$time);
endtask
initial begin
$display("---Start Simulation");
traffic_control(20,my_signal);
$display("back inside module Signal is %0d:",my_signal);
end
endmodule
