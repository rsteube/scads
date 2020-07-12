module airvent() {
    translate([0,40,5]){
        rotate(a=[90,0,0]){
            translate([0,7.5,20]){
                cylinder(r=1.25, h=20,$fn=20);
            }
            translate([-1.25,0,20]){
                cube([2.5,7.5,20]);
            }
            
            translate([0,0,20]){
                cylinder(r=1.25, h=20,$fn=20);
            }
        }
    }
}

module bracket() {
difference() {
    union() {
        // long rim
        cube([200, 20, 19.5]);
        translate([0,7,19.5]){
            cube([200, 6, 5]);
        }
        
        // short rim
        translate([50,-20,0]){ 
            difference(){
                cube([150, 20, 19.5]);
                translate([30,20,0]){
                rotate(a=[0,90,0]){
                    cylinder(h = 100, r=15);
                }
            }
            }
            translate([0,7,19.5]){
                cube([150, 6, 5]);
            }
        }
     }
     
    // hole 1
    translate([75,10,12.5]){
          cylinder(h = 25, r = 3, center = true);
     }
 
     // hole 2
     translate([185,10,12.5]){
        cylinder(h = 25, r = 3, center = true);
       }
    
      for ( i = [0 : 19] ){
          translate([82.5 + i*5,0,0]){ airvent(); }
      }
  }
}
 

module partA(){
difference(){
     bracket();
      translate([100,-20,0]){
        cube([100,40,25]);
     }
 }
 }

module partB() {
 translate([10,0,0]){
 intersection(){
     bracket();
      translate([100,-20,0]){
        cube([100,40,25]);
     }
 }
 }
 }
 
partA();
partB();