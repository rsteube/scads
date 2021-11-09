rotate([0,180,0]) {
  union() {
    translate([0,0,4]){ 
      linear_extrude(height=1) {
          import("plate.svg");
      }
    }
    translate([0,0,2.5]){ 
      linear_extrude(height=2.5) {
        difference(){
          import("plate.svg");
          import("bottom-usb.svg");
        }
      }
    }
    linear_extrude(height=2.5) {
      difference() {
          import("plate.svg");
          import("bottom-cutout.svg");
      }
    }
  }
}
