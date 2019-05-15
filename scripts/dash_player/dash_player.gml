

//set speeds
hspeed = key_right-key_left;
vspeed = key_down-key_up;

// increase speed
hspeed *= move_speed;
vspeed *= move_speed;

hspeed *= dash_speed;
vspeed *= dash_speed;

collision_block();
if (dash_timer < 0) {
	pstate = pstates.normal;
}
dash_timer--;