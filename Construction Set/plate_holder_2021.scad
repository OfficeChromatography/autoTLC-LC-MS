        //Select, please
//plate_holder_200();
//plate_pusher();
complete();

module plate_holder_200(){    
difference(){
   translate([0, 0, 0]) cube([221,109,8.3]);
   translate([4, 4, 0.2]) cube([212,101,10]);
   translate([140, 100, 6]) cube([3.2, 20, 6], center=true);
   translate([80, 100, 6]) cube([3.2, 20, 6], center=true);
   //holes for 3-mm screw tap
   translate([210, 24.5, 4.2])
   rotate([0, 90, 0]) cylinder(h=20, r=1.4);
   translate([210, 24.5+60, 4.2])
   rotate([0, 90, 0]) cylinder(h=20, r=1.4);
   translate([4, 0, 2]) cube([212, 4, 10]);
   translate([0, 0, 5]) cube([5, 98, 5]);
   }
}
module plate_pusher() {
    difference() {
    translate([200, 14.5, 0.2]) cube([10, 80, 8.3]);
    //holes to receive the 3-mm screws
    translate([210, 24.5, 4.2]) rotate([0, 90, 0]) cylinder(h=6, r=1.6);
    translate([210, 24.5+60, 4]) rotate([0, 90, 0])  cylinder(h=6, r=1.6);
    translate([200, 14.5, 3.5]) cube([5, 80, 5]);
    }
}
module screws() {
   translate([210, 24.5, 4.2])
   rotate([0, 90, 0]) cylinder(h=20, r=1.4);
   translate([210, 24.5+60, 4.2])
   rotate([0, 90, 0]) cylinder(h=20, r=1.4);
   translate([227, 24.5, 4.2])
   rotate([0, 90, 0]) cylinder(h=3, r=3);
   translate([227, 24.5+60, 4.2])
   rotate([0, 90, 0]) cylinder(h=3, r=3);
}
module complete() {
    plate_holder_200();
    plate_pusher();
    screws();
}