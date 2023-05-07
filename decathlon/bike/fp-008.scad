
module fp_008(housing) {
	$fa = 1;
	$fs = 0.5;

	difference() {
		union() {
			translate([0,0,8-1.5]) linear_extrude(height=1.5) {	
				translate([4.45,0,0]) square([21.8-8.9,8.9]);
				translate([4.45,4.45,0]) circle(d=8.9);
				translate([21.8-4.45,4.45,0]) circle(d=8.9);
			}
	
			linear_extrude(height=8) {	
				translate([4.45,0,0]) square([21.8-8.9-1,8.9]);
				translate([4.45,4.45,0]) circle(d=8.9);
				translate([21.8-4.45-1,4.45,0]) circle(d=8.9);
			}
		}
	
		cube([8.2, 8.9, 2.4]);
	
		translate([4.45,4.45,1.5+3.4]) cylinder(d=6.2, h=10);
		translate([4.45,4.45,2.4]) cylinder(d1=3, d2=6.2, h=2.5);
	
	
		translate([6.6,0,-10])	rotate([0,-68,0]) translate([21.8-4.45,4.45,-50]) cylinder(d=housing, h=200);
	}
}

fp_008(5);
