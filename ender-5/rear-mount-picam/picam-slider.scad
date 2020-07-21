module picam(){
    difference(){
        cube([24,25,5]);
        
        translate([2,2,2]){
            cylinder(r=1, h=3, $fn=10);
        }
        translate([2,23,2]){
            cylinder(r=1, h=3, $fn=10);
        }
        translate([14.5,2,2]){
            cylinder(r=1, h=3, $fn=10);
        }
        translate([14.5,23,2]){
            cylinder(r=1, h=3, $fn=10);
        }
    }
    translate([2,6.5,5]){
        cube([18, 12,3.5]);
    }
    translate([15,12.5,8.5]){
        cylinder(r=4, h=20, $fn=10);
    }
}

module picamslider(){
    difference(){
        cube([24+15,25,2.5]);
        
        translate([0,2,0]){
            rotate(a=[90,0,0]){
                cylinder(r=1.5, h=2, $fn=10);
            }
        }
        translate([0,25,0]){
            rotate(a=[90,0,0]){
                cylinder(r=2, h=2, $fn=10);
            }
        }
    }
    translate([2,6.5,2.5]){
        cube([22+15, 11,3]);
    }
    translate([15,8.5,5.5]){
        cube([9+15, 8,2]);
    }
   translate([15 +0.5,12.5,5.5]){
        cylinder(r=4.5, r2=10, h=20, $fn=40);
    }
    
    // cable socket
    translate([18,0,-1.5]){
        cube([6+15,25,1.5]);
    }
}

module bracket() {
    difference() {
        union() {
            cube([34.5,20,40]);
            translate([34.5,0,0]){
                cube([15, 20, 19.5]);
            }
            translate([34.5,7,19.5]){
                cube([15, 6, 5]);
            }

        }
        translate([32.5,3,0]){
                cube([17, 14, 16.5]);
         }
         
                     
         // cable
         translate([28.5-6,14,0]){
            cube([44, 10, 16.5]);
         }
    }
}

module full(){
rotate(a=[0,-90,0]){
difference(){
    bracket();
    translate([3-1,6.5-1,0]){
        rotate(a=[90,0,30]){
            picamslider();
        }
    }
}
}
}



//picamslider();
full();

//bracket();

