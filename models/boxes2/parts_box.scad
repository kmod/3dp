T=1;
cube([100,65,T]);
cube([100,T,50]);
translate([0,65-T,0]) cube([100,T,50]);
cube([T,65,50]);
translate([100-T,0,0]) cube([T,65,50]);

R=4;
for (i = [1 : R]) {
translate([i * 100/(R+1)-T/2,0,0]) cube([T,10,40]);
translate([i* 100/(R+1)-T/2,55,0]) cube([T,10,40]);
}
