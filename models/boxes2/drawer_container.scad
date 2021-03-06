THICKNESS = 2;
HEIGHT = 100;
WIDTH = 65 + 5;
DEPTH = 130;
// Locking tab:
TAB_THICKNESS = 2;

// bottom plate
translate([THICKNESS, THICKNESS, 0]) cube([DEPTH-THICKNESS,WIDTH-2*THICKNESS,THICKNESS]);
// stacking plate
translate([THICKNESS+2,THICKNESS+2,-THICKNESS]) cube([DEPTH-2*THICKNESS-4,WIDTH-2*THICKNESS-4,THICKNESS]);

// left wall
difference() {
cube([DEPTH,THICKNESS,HEIGHT]);
translate([10, -1, 2*THICKNESS-1]) cube([20, 2*THICKNESS, TAB_THICKNESS+2]);
}
translate([DEPTH-29,-THICKNESS,2*THICKNESS]) cube([18,THICKNESS,TAB_THICKNESS]);

// right wall
difference() {
translate([0,WIDTH-THICKNESS,0]) cube([DEPTH,THICKNESS,HEIGHT]);
translate([DEPTH-30, WIDTH-THICKNESS-1, 2*THICKNESS-1]) cube([20, 2*THICKNESS, TAB_THICKNESS+2]);
}
// right wall tab
translate([11,WIDTH,2*THICKNESS]) cube([18,THICKNESS,TAB_THICKNESS]);

// back wall
cube([THICKNESS,WIDTH,HEIGHT]);
