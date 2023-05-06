rotate_extrude() {
	translate([0,25,0]){
		difference() {
				union() {	
					circle(r=11);
					translate([0,-12.5,0]) square(size=[18,25], center=true);
				}

				union() {
					scale([1,0.5,1]) translate([0,8,0]) circle(d=13);
					translate([0,-12.5,0]) square(size=[13,33], center=true);
					translate([-15,0,0])     square(size=[30,100], center=true);
				}
		}
	}
}