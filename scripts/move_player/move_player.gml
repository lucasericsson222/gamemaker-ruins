// set keys
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

//set speeds
hspeed = key_right-key_left;
vspeed = key_down-key_up;

// increase speed
hspeed *= move_speed;
vspeed *= move_speed;


//collision checking (if true, set speed to 0)
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




