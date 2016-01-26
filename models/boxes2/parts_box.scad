THICKNESS=1;
DEPTH=100;
WIDTH=65;
HEIGHT=50;

NGUIDES=3;
NDIVIDERS=0;

TAB = true;

cube([DEPTH,WIDTH,THICKNESS]);
cube([DEPTH,THICKNESS,HEIGHT]);
translate([0,WIDTH-THICKNESS,0]) cube([DEPTH,THICKNESS,HEIGHT]);
cube([THICKNESS,WIDTH,HEIGHT]);
translate([DEPTH-THICKNESS,0,0]) cube([THICKNESS,WIDTH,HEIGHT]);

if (NGUIDES > 0) for (i = [1 : NGUIDES]) {
translate([i * DEPTH/(NGUIDES+1)-THICKNESS/2,0,0]) cube([THICKNESS,10,40]);
translate([i* DEPTH/(NGUIDES+1)-THICKNESS/2,55,0]) cube([THICKNESS,10,40]);
}
if (NDIVIDERS > 0) for (i = [1 : NDIVIDERS]) {
translate([i * 100/(NDIVIDERS+1)-THICKNESS/2,0,0]) cube([THICKNESS,55,HEIGHT-10]);
translate([i* 100/(NDIVIDERS+1)-THICKNESS/2,55,0]) cube([THICKNESS,10,HEIGHT-10]);
}

/*
if (TAB) {
translate([5, WIDTH/2, HEIGHT/2 + 10])
difference() {
cylinder(10, 20, 20, true);
cylinder(12, 15, 15, true);
translate([15,0,0]) cube([40, 50, 20], true);
}
}
*/

if (TAB) {
translate([5, WIDTH*0.5, 5+HEIGHT/2])
rotate(90, [1, 0, 0])
difference() {
cylinder(10, 15, 15, true);
cylinder(12, 12, 12, true);
translate([15,0,0]) cube([40, 50, 20], true);
}
}

/*
if (TAB) {
translate([0, WIDTH/2, HEIGHT/2 + 10])
difference() {
cylinder(10, 2, 20, true);
cylinder(12, 0, 18, true);
translate([20,0,0]) cube([40, 50, 20], true);
}
}
*/
