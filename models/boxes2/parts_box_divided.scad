T=1;
H=75;
cube([100,65,T]);
cube([100,T,H]);
translate([0,65-T,0]) cube([100,T,H]);
cube([T,65,H]);
translate([100-T,0,0]) cube([T,65,H]);

R=3;
for (i = [1 : R]) {
translate([i * 100/(R+1)-T/2,0,0]) cube([T,55,H-10]);
translate([i* 100/(R+1)-T/2,55,0]) cube([T,10,H-10]);
}
