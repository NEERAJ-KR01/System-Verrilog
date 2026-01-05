`timescale 1ns / 1ps
module typedf_ENUM();
typedef enum {red,yellow,green} color_light_t;
color_light_t light;
initial begin
light=red;  $display("choose light:%s value: %0d",light.name(),light);
light=yellow; $display("choose light:%s",light.name(),light);
light=green; $display("choose light:%s",light.name(),light);
end
endmodule
