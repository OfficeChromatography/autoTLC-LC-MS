X_carrier_frame();
//X_carrier_side_L();
//X_carrier_side_R();

module X_carrier_frame(){
    color("blue") difference(){
        union(){
            /////back  with endstop   
            hull(){ 
            translate([-23,20,4.4]) cylinder(h=8.3,r=2.5,center=true,$fn=60); 
            translate([ 23,20,4.4]) cylinder(h=8.3,r=2.5,center=true,$fn=60);
            translate([26,20,5]) rotate([0,90]) cylinder(h=12,r=2,center=true,$fn=60);        
            }       
            translate([0,0,4.4]) cube([38,40,8.3],center=true);
            
            ////frontmount
            hull(){ 
            translate([-24,-20,4.4]) cylinder(h=8.3,r=2.5,center=true,$fn=60); 
            translate([ 24,-20,4.4]) cylinder(h=8.3,r=2.5,center=true,$fn=60);
            }
    //mounting bar
    translate([0,-26,4.4])cube([100,7,8.3],center=true);
    //dimension test: 52 mm
    //translate([0, -29.5, 8.3]) cube([5, 52, 5]);
        }
         ///x-rod///  
        translate([0,-11,4]) rotate([0,90]) cylinder(h=303,r=2.4,center=true,$fn=60);
        translate([0,11,4]) rotate([0,90]) cylinder(h=303,r=2.4,center=true,$fn=60);
        ////belt screws
        translate([-14,0.1,6.1]) cylinder(h=7,r=2.3,center=true,$fn=60);
        translate([ 14,0.1,6.1]) cylinder(h=7,r=2.3,center=true,$fn=60);      
        ////inner 16-mm screws for belt    
        translate([-6,  0,4]) rotate([90,0]) cylinder(h=16.5,r=1.5,center=true,$fn=60);
        translate([ 6,  0,4]) rotate([90,0]) cylinder(h=16.5,r=1.5,center=true,$fn=60); 
        translate([-6,15.5,4]) rotate([90,0]) cylinder(h=20,   r=3,center=true,$fn=60);
        translate([ 6,15.5,4]) rotate([90,0]) cylinder(h=20,   r=3,center=true,$fn=60);   
        ////inner cavity          
        hull(){
            translate([-6,0,4]) rotate([90,0]) cylinder(h=7.4,r=2.6,center=true,$fn=60);
            translate([6,0,4]) rotate([90,0]) cylinder(h=7.4,r=2.6,center=true,$fn=60);      
            translate([-25,0,4]) rotate([90,0]) cylinder(h=7.4,r=1.75,center=true,$fn=60);
            translate([25,0,4]) rotate([90,0]) cylinder(h=7.4,r=1.75,center=true,$fn=60);      
            }                           
        //// screw holes for side frames
        translate([-19,6,4]) rotate([0,90]) cylinder(h=6,r=0.8,center=true,$fn=60);
        translate([-19,-6,4]) rotate([0,90]) cylinder(h=6,r=0.8,center=true,$fn=60);   
        translate([19,6,4]) rotate([0,90]) cylinder(h=6,r=0.8,center=true,$fn=60);
        translate([19,-6,4]) rotate([0,90]) cylinder(h=6,r=0.8,center=true,$fn=60); 
        ////joint cutout
/*       translate([0,-20.3,4]) cube([5,4.41,10],center=true);
        translate([ 2.49,-22.51,4]) cube([1,1,10],center=true);
        translate([-2.49,-22.51,4]) cube([1,1,10],center=true); */
    //screw holes to mount the plate holder
    translate([30, -10, 4.5])
    rotate([90, 0, 0])
    cylinder(r=1.3, h=30);
    translate([-30, -10, 4.5])
    rotate([90, 0, 0])
    cylinder(r=1.3, h=30);
        } 
        color("blue") union(){
        translate([ 2.99,-22.01,4.4]) cylinder(h=8.3,r=0.5,center=true,$fn=60); 
        translate([- 2.99,-22.01,4.4]) cylinder(h=8.3,r=0.5,center=true,$fn=60);}      
                                  
    }
    
module X_carrier_side_L(){     
        ////side frame
        color("blue")difference(){    
        translate([-1.5,0,4.4]) cube([5,33,8.3],center=true);
        
        //// screw holes for side frames
        translate([-2,6,4]) rotate([0,90]) cylinder(h=10,r=0.9,center=true,$fn=60);
        translate([-2,-6,4]) rotate([0,90]) cylinder(h=10,r=0.9,center=true,$fn=60);      
        translate([-3.55,6,4]) rotate([0,90]) cylinder(h=4,r=1.6,center=true,$fn=60);
        translate([-3.55,-6,4]) rotate([0,90]) cylinder(h=4,r=1.6,center=true,$fn=60);  
     
        hull(){
            translate([9,0,4]) rotate([90,0]) cylinder(h=7.4,r=1.75,center=true,$fn=60); 
            translate([-9,0,4]) rotate([90,0]) cylinder(h=7.4,r=1.75,center=true,$fn=60);   
        }          
        translate([0,-11,4]) rotate([0,90]) cylinder(h=303,r=2.4,center=true,$fn=60);
        translate([0,11,4]) rotate([0,90]) cylinder(h=303,r=2.4,center=true,$fn=60);

       difference(){
            translate([1.5,-11,4]) rotate([0,90]) cylinder(h=2.6,r=4,center=true,$fn=60);
            translate([0,-14,-0.75]) cube([5,6,1]);}
            difference(){
            translate([1.5,11,4]) rotate([0,90]) cylinder(h=2.6,r=4,center=true,$fn=60);     
            translate([0,8,-0.75]) cube([5,6,1]);}
            }
        }   
module X_carrier_side_R(){  
        mirror (1,0,0) X_carrier_side_L();
        }