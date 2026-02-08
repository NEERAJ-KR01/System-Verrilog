interface smart_link;
  logic on_off;
  logic[3:0]brightness;
  logic [1:0]color;
  
  modport REMOTE (output on_off, brightness, color);
  modport BULB (input on_off, brightness, color);
endinterface 

module remote_side (smart_link.REMOTE rmt);
  initial begin
    rmt.on_off=0;
    rmt.brightness=0;
    rmt.color=0;
    $display("[REMOTE] BULB is off");
#10
    rmt.on_off=1;
    rmt.brightness=15;
    rmt.color=2'b01;
    $display("[Remote] party mode[RED] ");
#10 
    rmt.on_off=1;
    rmt.brightness=5; //dim light
    rmt.color=2'b10; //RED
    $display(" [Remote] setting movie light[BLUE]",);
 #10
     rmt.on_off=0;
     rmt.brightness=0;
     rmt.color=0;
     $display("[REMOTE] BULB is off");
  end
endmodule

module bulb_side(smart_link.BULB rmt);
string color_name;
  always@(rmt.brightness,rmt.on_off,rmt.color)begin
    if(rmt.on_off==0)begin
      $display("-->BULB is off"); end
   else begin
     case (rmt.color)
          0: color_name="WHITE";
          2'b01: color_name="RED";
          2: color_name="BLUE";
          3: color_name="GREEN";
endcase
            $display("--> Bulb is On | color %s | Brightness:%d/15",color_name,rmt.brightness);
    end
       end
       endmodule
  module top;
  smart_link wires();
  remote_side r0(wires);
  bulb_side b0(wires);
  endmodule
    
    
