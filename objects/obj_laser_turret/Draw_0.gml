var dir = 0;
dir++;
var dirx = lengthdir_x(100,dir);
var diry = lengthdir_y(100,dir);
shoot_laser(x,y,x + dirx, y + diry,20);
draw_self();
event_inherited();