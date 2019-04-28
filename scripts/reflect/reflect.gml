vx = argument0;
vy = argument1;
nx = argument2;
ny  argument3;

var rx = 2 (dot_product(vx,vy,nx,ny)) * vx - nx;
var ry = 2 (dot_product(vx,vy,nx,ny)) * vy - vy;

var dir = point_direction(0,0,rx,ry);
return dir;