// shower head bracket
// units are mm

h           = 60; // height
w           = 30; // width
dia_top     = 25; // shower diameter top
dia_bottom  = 18; // shower diameter bottom
angle       = 25; 
dia_crew1   = 6;
dia_crew2   = 10;
dist_screw  = 5;
dist        = 10;
d           = 17 +  dia_bottom + dist;

module main(){
    difference() {
        translate([0,-w/2,0]) cube(size=[d,w,h]);
        translate([d-dia_bottom,0,h/2]) rotate([0,angle,0]) union() {
            translate([0,0,-5]) cylinder(h=h+6, r1=dia_bottom/2, r2=dia_top/2, center=true);
            translate([0,-dia_bottom/2,-(h+15)/2]) cube(size=[100,dia_bottom,h+15]);
            translate([0,0,h/2+5]) cube(size=[w+10,w+10,20], center=true);
        }
        translate([d-dia_bottom,-(w+10)/2,0]) rotate([0,angle,0]) cube(size=[d,w+10,h]);
    }
    
    difference() {
        rotate([0,70,0]) translate([-35,0, -11]) cylinder(h=70, r1=15/2, r2=25/2, center=true);
        rotate([90,0,0]) translate([-46,20,0]) cylinder(h=30,  r=dia_crew2/2, center=true);
    }
    translate([20,30,+19]) cylinder(h=39,  r=dia_crew2/2.3, center=true);
    translate([20,30,2]) cylinder(h=5,  r=dia_crew2/1.1, center=true);
}

main();