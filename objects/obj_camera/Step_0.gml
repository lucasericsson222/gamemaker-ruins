/// @description folow player with interpolation
var player = obj_player;

if (instance_exists(player)) {
	var xx = player.x;
	var yy = player.y;
	new_x = (mouse_v * xx) + mouse_x - xx;
	new_x = new_x / mouse_v;
	new_y = (mouse_v* yy) + mouse_y - yy;
	new_y = new_y / mouse_v;


	x = lerp(x,new_x,c_speed);
	y = lerp(y,new_y,c_speed);
} else {

		new_x = x;
		new_y = y;

}
manage_camera();