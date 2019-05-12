

//set speeds
hspeed = key_right-key_left;
vspeed = key_down-key_up;

// increase speed
hspeed *= move_speed;
vspeed *= move_speed;

hspeed *= dash_speed;
vspeed *= dash_speed;

collision_block();
pstate = pstates.normal;