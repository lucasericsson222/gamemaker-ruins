var x_start = argument0 + sign(argument0); // where to start the laser from x
var y_start = argument1 + sign(argument1); // diddo y
var x_dir = argument2; // direction in x vector
var y_dir = argument3; // direction in y vector
var bounce_number = argument4; // number of bounces (so no infinite recursion)


var laser_dir = point_direction(x_start,y_start, x_dir, y_dir); // translate xy vector to dir vector

var max_length = 1000; // ensure no infinite loop (if statement must end somewhere)
var solid_object = obj_wall_parent; // choose obj that will be a stopper of the laser

// incremetally increase length of laser until wall
for(var i = 0; i < max_length; i++){

    var lx = x_start + lengthdir_x(i, laser_dir);
    var ly = y_start + lengthdir_y(i, laser_dir);

    if(collision_point(lx, ly, solid_object, false, true) && i >10){
		// stop increasing if wall
        break;
    }
	if (collision_point(lx,ly,obj_shield,false,true) && i > 10) {
	
		break;
	
	}
	if (collision_point(lx,ly,obj_player,false,true) && i >10) {
	
		break;
	
	}
}
// collision code for objects that laser goes through
// if you want to have a collision with an object, use with(OBJNAME) and the if statement to test 
// whether that object is hit
with (obj_enemy_parent){
	if (collision_line_width(x_start,y_start,lx,ly,10,id)) {

		enemy_health--;
		}else{ 
		
		}
}
with (obj_player) {
	if (collision_line_width(x_start,y_start,lx,ly,10,id)) {
	
		global.player_health--;
	
	}
}
// draw the laser (replace with fancier stuff if needed)
draw_set_color(c_white);
draw_line_width(x_start,y_start,lx,ly,10);

// test for if there is a collision with rebound object
if (collision_line(x_start,y_start,lx,ly,obj_wall_reflect,true,true)) {
	
	//find normal of wall (what line is perpendicular to it)
	var ndir = collision_normal(lx,ly,obj_wall_reflect);
	
	// make sure that there is a wall & no errors
	if (ndir != -1) { 
		
		// create velocity vector of incoming laser 
		var vx = lx - x_start; 
		var vy = ly - y_start;
		// change normal to xy vector
		var nx = cos(degtorad(ndir)) * max_length; 
		var ny = sin(degtorad(ndir)) * max_length; 
		
		//calculate reflection vector
		var rdir = reflect(vx,vy,nx,ny); 
		
		// create xy vector from reflect dir
		var rx = cos(degtorad(rdir)) * max_length; 
		var ry = sin(degtorad(rdir)) * max_length;
		
		//make the vector relative to start point
		rx = rx +  x_start; 
		ry = ry + y_start;
		
		//ensure no infintie recursion
		if (bounce_number > 0) { 
			
			// recursionify but with new starting point at the end of this laser and new direction 
			// one less bounce
			shoot_laser(lx,ly,rx,ry,bounce_number-1);
		
		}
	} 
}
if (collision_line(x_start,y_start,lx,ly,obj_shield,true,true)) {
	if (bounce_number >0) {
		
		
		var rdir = obj_shield.direction;
		var rx = lengthdir_x(100, rdir);
		var ry = lengthdir_y(100, rdir);
		shoot_laser(lx,ly,rx,ry,bounce_number-1);
	
	}
}

