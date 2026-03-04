module parking_lot;
  semaphore parking_spot;
  initial begin 
    parking_spot=new(2);
    $display("----open 2 parking lot----");
    fork 
      begin  //CAR 1
        $display("[Time:%0t]CAR 1 needs a parking ",$time);
        parking_spot.get(1);
        $display("[Time:%0t]CAR 1 gets a parking ",$time);
        #10
        parking_spot.put(1);
        $display("[Time:%0t]CAR 1 leaves parking ",$time);
      end
      
      begin  // CAR 2
        $display("[Time:%0t]CAR 2 needs a parking ",$time);
        parking_spot.get(1);
        $display("[Time:%0t]CAR 2 gets a parking ",$time);
        #15
        parking_spot.put(1);
        $display("[Time:%0t]CAR 2 leaves parking",$time);
      end
      begin  //CAR 3 POOR GUY
        $display("[Time:%0t]CAR 3 NEEDS A PARKING BUT HE CANT TAKE ONE ",$time);
        parking_spot.get(1);
        $display("[Time:%0t]CAR 3 finally got parking ",$time);
        #10
        parking_spot.put(1);
        $display("[Time:%0t]CAR 3 leave the parking ",$time);
      end
    join
  end endmodule
    
