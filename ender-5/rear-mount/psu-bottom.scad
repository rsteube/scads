difference() {
    union() {
        // long rim
        cube([200, 20, 10]);
        translate([0,7,10]){
            cube([200, 6, 5]);
        }
        
        // short rim
        translate([50,20,0]){ 
            cube([150, 20, 10]);
            translate([0,7,10]){
                cube([150, 6, 5]);
            }
        }
     }
     
     // hole 1
     translate([75,10,12.5]){
        cylinder(h = 25, r = 3, center = true);
        cylinder(h = 15, r = 5, center = true);
     }
     
      // hole 2
      translate([185,10,12.5]){
        cylinder(h = 25, r = 3, center = true);
        cylinder(h = 15, r = 5, center = true);
     }
     
     // motor cutout
     translate([140,13,7]){ 
          cube([50, 27, 8]);
          translate([0,10,-5]){
            cube([50, 16, 5]);
          }
        }
 }