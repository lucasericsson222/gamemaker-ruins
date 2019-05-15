/// @description Initialize Variables and Shield
//visual variables
depth = -10; // make sure that the player appears on top


//player variables
move_speed = 2;
dash_speed = 5;
dash_timer = 5;
player_health_max = 500;
global.player_health = player_health_max;
player_health_chunks = 10;

enum pstates{
	normal,
	dashing,
}

pstate = pstates.normal;


camera = instance_create_depth(0,0,0,obj_camera);
//shield variables

global.shield = instance_create_depth(x,y,0,obj_shield);