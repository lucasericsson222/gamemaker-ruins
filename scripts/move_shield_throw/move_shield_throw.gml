// spin shield
image_angle += spin_speed;

// check if mouse button is clicked
mouse_left = mouse_check_button_pressed(mb_left);

// shoot shield out only if it isn't returing and this is the first time that it fires
if (mouse_left = 0 && returning == false && block == false) {
	direction = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
	speed = shield_speed;
	block = true;

} else if (mouse_left == 1 || returning == true) { // return shield, only when clicked & follow player

	returning = true;
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	speed = shield_speed;


}


// destroy throw shield when converting back to regular shield
if (place_meeting(x+hspeed,y+vspeed,obj_player) && timer > 10 ) {
	global.shield = instance_create_depth(x,y,-10, obj_shield);
	instance_destroy(obj_shield_thrown);
}

// test for collisions with a wall
if (place_meeting(x+hspeed,y,obj_wall_parent) && returning == false) {
	
	while  (!place_meeting(x+sign(hspeed),y,obj_wall_parent)) {
		
		x += sign(hspeed);
		
	}
	hspeed = 0;
	vspeed = 0;
	spin_speed = 0;
	
}
// continue testing
if (place_meeting(x,y+vspeed,obj_wall_parent) && returning == false) {

	while (!place_meeting(x,y+sign(vspeed), obj_wall_parent)) {
	
		y+= sign(vspeed);
	
	} 
	vspeed = 0;
	hspeed = 0;
	spin_speed = 0;
	

}
// apply timer count up
timer++;