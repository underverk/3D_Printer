// PRUSA iteration3
// NEMA 17 extruder body
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz>, Kliment Yanev and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

// offset de los taladros de sujeción
m=5;
// distancia entre taladros de sujeción
support=30;

module nozzlemount(){
rotate([0,90,0]) cylinder(r=2, h=70, $fn=30);
translate([17,0,0]) rotate([0,90,0]) cylinder(r2=3,r1=2, h=10, $fn=30);
translate([1,0,0]) rotate([0,90,0]) cylinder(r1=4, r2=2, h=3);

translate([0,15+10,0]) rotate([0,90,0]) cylinder(r=2, h=70);
translate([10-2.5,15+10,0]) rotate([0,90,0]) rotate([0,0,30]) cylinder(r=3.2, h=70,$fn=6);
translate([0,-25,0]) rotate([0,90,0]) cylinder(r=2, h=70);
translate([10-2.5,-25,0]) rotate([0,90,0]) rotate([0,0,30])cylinder(r=3.2, h=70,$fn=6);
}


difference(){
union(){
translate([0,-1,0]) cube([42,19,54]);
translate([0,-42,0]) cube([42,42+3,4]);
translate([-7.99,-42,0]) cube([8,80+10,54]);

translate([-1,30,0]) cube([6, 7, 52]);


translate([-1,15,51]) cube([6, 20, 1]);
translate([-1,15,22]) cube([6, 20, 2]);

}

//antiwarpagenation

translate([46,-91+28,4])rotate([0,0,45]) cube(48);
translate([-11,-91,-1])rotate([0,0,45])  cube([40,40,60]);
translate([46,12,-1])rotate([0,0,45])  cube([40,40,60]);
translate([-32,12+9,-1])rotate([0,0,45]) cube([40,40,60]);
translate([6,31+9,-1])rotate([0,0,45]) cube([40,40,60]);



// motor circle cut
translate([0,-1,0.5]){
translate([21,-21,-1]) cylinder(r=12, h=5, $fn=90);

 translate([15,-45,-1]) cube([30,30,5]);

translate([21+15.5,-21+15.5,-1]) cylinder(r=2, h=5);
translate([21+15.5,-21-15.5,-1]) cylinder(r=2, h=5);
translate([21-15.5,-21+15.5,-1]) cylinder(r=2, h=5);
translate([21-15.5,-21-15.5,-1]) cylinder(r=2, h=5);
}



// idler bearing cutout

translate([21,24,33]) cylinder(r=12, h=17.5, $fn=90);



translate([21,8.1,7.5]) cylinder(r=6, h=43, $fn=50);

translate([21,8.1,-1]) cylinder(r=6, h=3, $fn=50);
// Second filament drive bearing
translate([21,8.1,1]) cylinder(r=8.1, h=6, $fn=50);
// Second filament drive bearing insert cutout

translate([13,8,43]) cube([16.2,20,7.5]);


translate([21,8.1,-5+52-4]) cylinder(r=8.1, h=7.5, $fn=50);
translate([-6+21,8,7.5]) cube([12,12,40]);

translate([-6+21,8,-50+7]) cube([12,12,50]);


translate([13,8,1]) cube([16.2,20,6]);

//mounting to carriage
translate([-5,20,-28]){
translate([0,0+m ,0])rotate([0,0,0])cylinder(r=3.4, h=70, $fn=15);
translate([0,0-support+m ,0])rotate([0,0,0])cylinder(r=3.4, h=70, $fn=15);
// make a layer for the holes
translate([0,0+m ,70+0.3]) rotate([0,0,0]) cylinder(r=3.3/2, h=12, $fn=15);
translate([0,0-support+m  ,70.3])rotate([0,0,0])cylinder(r=3.3/2, h=12, $fn=15);
}

// idler nuts and filament channels

translate([0,0,-2]){
translate([-12,2+8+3.5,52-12]) nozzlemount();
//translate([-10,2+8+4,52-12-25]) nozzlemount();

translate([32.5,7,52-12-7-3]) cube([15,3,6]);

translate([32.5,7,52-12-7-3+14]) cube([15,3,6]);


//translate([5+32,-1,52-12+7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=3.3, h=10, $fn=6);
//translate([5+32,-1,52-12-7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=3.3, h=10, $fn=6);



translate([5+32,-1,52-12+7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=2, h=40, $fn=6);
translate([5+32,-1,52-12-7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=2, h=40, $fn=6);
translate([5+31,-1,52-12+7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=2, h=40, $fn=6);
translate([5+31,-1,52-12-7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=2, h=40, $fn=6);


// pretty cutout
translate([-10,27+3,0]) rotate([-23,0,0]) cube([20,12+20,50+10]);
translate([-3,27,6-10]) rotate([0,23,0]) cube([20,12,50]);

// pretty cutout
translate([-10,-66,0]) rotate([-23,0,0])  cube([12,20,90]);
// new pretty
translate([-10+3,-66+4,14-10]) rotate([-23,0,0]) rotate([0,0,40]) cube([12,20,90]);
translate([10,-66+20,10]) rotate([-23,0,0]) rotate([0,0,40+90]) cube([12,20,90]);

//fan holes
translate([-4,28+10,10]) rotate([90-23,0,0])  translate([0,1,0]) cylinder(r=3/2,h=31);
translate([-4,28+10,10]) rotate([90-23,0,0])  translate([0,1+32,0]) cylinder(r=3/2,h=30);


}
}