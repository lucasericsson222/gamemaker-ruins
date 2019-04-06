/// @description Initialize Variables and Shield
//visual variables
depth = -10; // make sure that the player appears on top

// mouse velocity or how little power the mouse has on the camera view
mouse_v = 6;

//player variables
move_speed = 3;
player_health_max = 500;
global.player_health = player_health_max;
player_health_chunks = 10;

//shield variables

shield = instance_create_depth(x,y,0,obj_shield);