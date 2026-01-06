typedef enum {MON, TUE, WED, THU, FRI, SAT, SUN} day_t;
day_t day;
module e_numm;
initial begin
    day = WED;  
    day=day.first;
    $display("First day: %s", day.name());  // MON
    day=day.last();
    $display("Last day: %s", day.name());    // SUN
    day=WED;
    day=day.next();
    $display("Next day: %s", day.name());    // THU
    day=day.prev();
      day=day.prev();
    $display("Prev day: %s", day.name());    // TUE
    day=WED;
    $display("Current day name: %s", day.name());   // WED
end
endmodule
