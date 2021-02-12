//electronic housing for Raspberry Pi, Arduino and Ramps shield

//housing();
//pi_support();
//cover();
full_view(); //not for printing

module full_view() {
    housing();
    pi_support();
    cover();
}

module housing(){
        difference(){
            union(){
        difference(){
            union(){            
////arduino postes
                translate([ 11.5,-38.5,4]) cylinder(h=3, r=3,$fn=60); 
                translate([-37, 38,4]) cylinder(h=3, r=3,$fn=60); 
                translate([-37,-45,4]) cylinder(h=3, r=3,$fn=60); 
                translate([11.5, 37, 4]) cylinder(h=3, r=3,$fn=60);
                
////main hull
                difference(){
                    hull() {
                        translate([ 49.5, 47.5,0]) cylinder(h=80, r=8,$fn=60);  
                        translate([-49.5,-47.5,0]) cylinder(h=80, r=8,$fn=60);  
                        translate([ 49.5,-47.5,0]) cylinder(h=80, r=8,$fn=60);  
                        translate([-49.5, 47.5,0]) cylinder(h=80, r=8,$fn=60);
                    } 
//cut-out inside             
                    hull(){
                        translate([ 46.5, 44.5,4]) cylinder(h=92, r=8,$fn=60);  
                        translate([-46.5,-44.5,4]) cylinder(h=92, r=8,$fn=60);  
                        translate([ 46.5,-44.5,4]) cylinder(h=92, r=8,$fn=60);  
                        translate([-46.5, 44.5,4]) cylinder(h=92, r=8,$fn=60);
                    }      
                }
            }
////bottom cutout
                hull() {
                    translate([ 40, 24, -10]) cylinder(h=20, r=6,$fn=60);  
                    translate([-40,-29,-10]) cylinder(h=20, r=6,$fn=60);  
                    translate([ 40,-29,-10]) cylinder(h=20, r=6,$fn=60);  
                    translate([-40, 24,-10]) cylinder(h=20, r=6,$fn=60);
                }   
////arduino srews cutout
                translate([ 11.5,-38.5,-2]) cylinder(h=13, r=1.45,$fn=60); 
                translate([-37, 38, -2]) cylinder(h=13, r=1.45,$fn=60); 
                translate([-37,-45, -2]) cylinder(h=13, r=1.45,$fn=60); 
                translate([ 11.5, 37, -2]) cylinder(h=13, r=1.45,$fn=60); 
                 
//cut-out Arduino USB
            translate([-8.5, 45, 8]) cube([14, 20, 13]);
//cutout Ramps power
            translate([-46, 45, 22]) cube([23, 20, 12]);    

////Sb25 Port         
            translate([ 25,52,8.5]) rotate([90,0,0]) cylinder(h=10, r=1,center=true,$fn=60);       
            translate([ 25,52,55.5]) rotate([90,0,0]) cylinder(h=10, r=1,center=true,$fn=60);   
            hull(){
                translate([ 18,48.5,5]) rotate([90,0,0]) cylinder(h=10, r=1,center=true,$fn=60);       
                translate([ 32,48.5,5]) rotate([90,0,0]) cylinder(h=10, r=1,center=true,$fn=60);       
                translate([ 18,48.5,60]) rotate([90,0,0]) cylinder(h=10, r=1,center=true,$fn=60);       
                translate([ 32,48.5,60]) rotate([90,0,0]) cylinder(h=10, r=1,center=true,$fn=60);       
                }      
            hull(){
                translate([ 22,52,15]) rotate([90,0,0]) cylinder(h=10, r=2,center=true,$fn=60);       
                translate([ 28,52,14]) rotate([90,0,0]) cylinder(h=10, r=2,center=true,$fn=60);       
                translate([ 22,52,49]) rotate([90,0,0]) cylinder(h=10, r=2,center=true,$fn=60);       
                translate([ 28,52,50]) rotate([90,0,0]) cylinder(h=10, r=2,center=true,$fn=60);       
            }         
        }      
    }  //end union
           
////ventilation slots
            for(j=[-55,55], i=[0,10,20,30,-10,-20,-30]){
            hull(){
            translate([j,0+i,12]) rotate([0,90,0]) cylinder(h=10, r=2,center=true,$fn=60);       
            translate([j,0+i,68]) rotate([0,90,0]) cylinder(h=10, r=2,center=true,$fn=60);      
            }
        } 
//cut-out RPi connections 
        translate([-45, 40, 56]) cube([55, 26, 18]);
//holes to mount RPi support
        translate([-35, 65, 52]) rotate([90, 0, 0]) cylinder(r=1.5, h=30, $fn=30);
       translate([1, 65, 52]) rotate([90, 0, 0]) cylinder(r=1.5, h=30, $fn=30);
       translate([-35, -45, 52]) rotate([90, 0, 0]) cylinder(r=1.5, h=30, $fn=30); 
       translate([1, -45, 52]) rotate([90, 0, 0]) cylinder(r=1.5, h=30, $fn=30);
    }
//pillars for RPi cutout
translate([-27, 52.5, 56]) cube([2, 3, 18]);
translate([-9.5, 52.5, 56]) cube([2, 3, 18]);    

string = "autoTLC-MS2";
rotate ([90,0,0])
translate ([-51,25,55])
linear_extrude(3) text(string, size = 12, direction = "ltr", spacing = 1 );
} 
module pi_support() {
difference() {
    union() {
        translate([-45, 26.5, 50]) cube([56, 26, 5]);
        translate([-45, -52.5, 50]) cube([56, 26, 5]);
    }
    translate([-35, 65, 52.5]) rotate([90, 0, 0]) cylinder(r=1.4, h=30, $fn=30);
    translate([  1, 65, 52.5]) rotate([90, 0, 0]) cylinder(r=1.4, h=30, $fn=30);
    translate([-35, -45, 52.5]) rotate([90, 0, 0]) cylinder(r=1.4, h=30, $fn=30); 
    translate([  1, -45, 52.5]) rotate([90, 0, 0]) cylinder(r=1.4, h=30, $fn=30);
    translate([-41.5,  29, 50]) cylinder(h=10, r=1, $fn=30);
    translate([  7.5,  29, 50]) cylinder(h=10, r=1, $fn=30); 
    translate([-41.5, -29, 50]) cylinder(h=10, r=1, $fn=30);
    translate([  7.5, -29, 50]) cylinder(h=10, r=1, $fn=30);
    }
}
module cover() {
    hull() {
        translate([ 49.5, 47.5,80]) cylinder(h=3, r=8,$fn=60);  
        translate([-49.5,-47.5,80]) cylinder(h=3, r=8,$fn=60);  
        translate([ 49.5,-47.5,80]) cylinder(h=3, r=8,$fn=60);  
        translate([-49.5, 47.5,80]) cylinder(h=3, r=8,$fn=60);
        } 
    hull(){
        translate([ 46.5, 44.5,80-4]) cylinder(h=4, r=8,$fn=60);  
        translate([-46.5,-44.5,80-4]) cylinder(h=4, r=8,$fn=60);  
        translate([ 46.5,-44.5,80-4]) cylinder(h=4, r=8,$fn=60);  
        translate([-46.5, 44.5,80-4]) cylinder(h=4, r=8,$fn=60);
        }
}
