if (place_meeting(x+hspeed,y,obj_wall_parent)) {
	
	while !place_meeting(x+sign(hspeed),y,obj_wall_parent) {
		
		x += sign(hspeed);
		
    }
	hspeed = 0;
	
}
if (place_meeting(x,y+vspeed,obj_wall_parent)) {

	while !place_meeting(x,y+sign(vspeed), obj_wall_parent) {
	
		y+= sign(vspeed);
	
	}
	vspeed = 0;

}

// collision for turrets (same as walls)
if (place_meeting(x+hspeed,y,obj_turret_parent)) {
	
	while !place_meeting(x+sign(hspeed),y,obj_turret_parent) {
		
		x += sign(hspeed);
		
    }
	hspeed = 0;
	
}

if (place_meeting(x,y+vspeed,obj_turret_parent)) {

	while !place_meeting(x,y+sign(vspeed), obj_turret_parent) {
	
		y+= sign(vspeed);
	
	}
	vspeed = 0;

}
