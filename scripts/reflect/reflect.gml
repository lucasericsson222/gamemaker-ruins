// incoming vector
var vx = argument0;
var vy = argument1;

// normal vector input (normal = perpedicular to wall vector)
var nx = argument2;
var ny = argument3;

// reflect the vector
var rx = (2 * ((dot_product(vx,vy,nx,ny)) * vx)) - nx;
var ry = (2 * ((dot_product(vx,vy,nx,ny)) * vy)) - ny;

// take reflection xy vector and make a direction vector out of it
dir = point_direction(0,0,rx,ry);
return dir;