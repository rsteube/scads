rotate([0,180,0]) {
  union() {
    translate([0,0,2.9]){ 
      linear_extrude(height=1.6) {
        difference() {
          import("plate.svg");
          import("top-cutout.svg");
        }
      }
    }
    linear_extrude(height=2.9) {
      difference() {
        import("plate.svg");
        import("top-cutout-lower.svg");
      }
    }
  }
}
