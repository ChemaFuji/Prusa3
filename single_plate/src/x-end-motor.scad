// PRUSA iteration3
// X end motor
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <inc/x-end.scad>

module x_end_motor_base(){
 x_end_base();
 translate(v=[-14,31,26.5]) cube(size = [17,44,53], center = true);
}

module x_end_motor_holes(){
 x_end_holes();
 // Position to place
 translate(v=[-0,32,30.25]){
  // Belt hole
  translate(v=[-14,-20,0]) cube(size = [10,100,32], center = true);
  // Motor mounting holes
  translate(v=[-10,-15.5,-15.5]) cube(size = [60,3.5,3.5], center = true);
  translate(v=[-10,-15.5,15.5]) cube(size = [60,3.5,3.5], center = true);
  translate(v=[-10,15.5,-15.5]) cube(size = [60,3.5,3.5], center = true);
  translate(v=[-10,15.5,15.5]) cube(size = [60,3.5,3.5], center = true);
  // Material saving cutout
  translate(v=[-10,40,-30]) rotate(a=[45,0,0])  cube(size = [60,42,42], center = true);
  // Motor shaft cutout
  translate(v=[0,0,0]) rotate(a=[0,-90,0]) rotate(a=[0,0,90]) cylinder(h = 80, r=18, $fn=6);
 }
}

// Final part
module x_end_motor(){
 difference(){
  x_end_motor_base();
  x_end_motor_holes();
 }
}

x_end_motor();