module cable_management(){
  translate([0,0,2]){
    difference(){
      cube([10,4,4]);
      translate([5, 4, -0.5]) rotate([90,0,0]) cylinder(r=3, h=4, $fn=20);
    }
  }
}

module buck_module(){
    translate([0,0,8]){
      difference(){
        color([1,0,0]) cube([46.5, 21, 2]);
        translate([46.5-6.5,2.5,0]) cylinder(r=1.5, h=2, $fn=10);
        translate([9.5,21-2.5,0]) cylinder(r=1.5, h=2, $fn=10);
      }
    }
}
module buck_mount(){
    translate([46.5-6.5,2.5,0]) mount();
    translate([9.5,21-2.5,0]) mount();
}

module yyg2_module(){
  translate([0,0,8]){
    difference(){
      color([0,1,0]) cube([65.7,40.5,2]);
      translate([3.5,3.5,0]) cylinder(r=1.5, h=2, $fn=10);
      translate([3.5,40.5-3.5,0]) cylinder(r=1.5, h=2, $fn=10);
      translate([65.7-3.5,3.5,0]) cylinder(r=1.5, h=2, $fn=10);
      translate([65.7-3.5,40.5-3.5,0]) cylinder(r=1.5, h=2, $fn=10);
    }
  }
}

module yyg2_mount(){
    translate([3.5,3.5, 0]) mount();
    translate([3.5,40.5-3.5,0]) mount();
    translate([65.7-3.5,3.5,0]) mount();
    translate([65.7-3.5,40.5-3.5,0]) mount();
}

module pi_module(){
    translate([0,0,8]){
      difference(){
        color([0,0,1]) cube([85, 56, 2]);
        translate([3.5,3.5,0]) cylinder(r=1.5, h=2, $fn=10);
        translate([3.5,56-3.5,0]) cylinder(r=1.5, h=2, $fn=10);
        translate([3.5+58,3.5,0]) cylinder(r=1.5, h=2, $fn=10);
        translate([3.5+58,56-3.5,0]) cylinder(r=1.5, h=2, $fn=10);
      }
    }
}
module pi_mount(){
  translate([3.5,3.5,0]) mount();
  translate([3.5,56-3.5,0]) mount();
  translate([3.5+58,3.5,0]) mount();
  translate([3.5+58,56-3.5,0]) mount();
}

module mount(){
  difference(){
    union(){
      cylinder(r=4,h=6, $fn=20);
      cylinder(r=3,h=7, $fn=20);
    }
    cylinder(r=1.325,h=8, $fn=20);
  }
}

module psu(){
  difference(){
    translate([-10,0,0]) cube([20,2,20]);
    translate([0,0,12.5]) rotate([-90,0,0]) cylinder(r=2, h=2, $fn=20);
  }
  translate([-10,0,0]) cube([20,7,7]);
}


difference(){
  union(){

    difference(){
      cube([192.5, 79, 2]);
      translate([22.5+5,2+5,0]) cube([67-10,40-10,2]);
      translate([41.5+5,52+5,0]) cube([46.5-10,21-10,2]);
      translate([100+5,17+5,0]) cube([85-10,56-10,2]);
    }

    //translate([22.5,2,0]) yyg2_module();
    translate([22.5,2,0]) yyg2_mount();
    //translate([41.5,52,0]) buck_module();
    translate([41.5,52,0]) buck_mount();
    //translate([100,17,0]) pi_module();
    translate([100,17,0]) pi_mount();
    translate([32.5,0,0]) {
    difference(){
      psu();
      translate([-6, 6, 0]) cylinder(r=2.5, h=8, $fn=20); // screw hole fix
    }
    }
    translate([182.5,0,0]) psu();

    translate([0,5,0]) cable_management();
    translate([0,25,0]) cable_management();
    translate([87,5,0]) cable_management();
    translate([178.5-16,5,0]) cable_management();
  }
  //translate([45,0,0]) cube([300,100,50]);
}

