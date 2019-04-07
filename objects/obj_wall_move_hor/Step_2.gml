delta_x = x - xprevious;
delta_y = y - yprevious;

if (place_meeting(x+delta_x,y,obj_player)) {
	
	obj_player.x += delta_x;
	
}
if (place_meeting(x,y+delta_y,obj_player)) {

	obj_player.y += -delta_y;

}
if (place_meeting(x+delta_x,y,obj_shield_thrown)) {
	
	obj_shield_thrown.x += delta_x;
	
}
if (place_meeting(x,y+delta_y,obj_shield_thrown)) {

	obj_shield_thrown.y += -delta_y;

}
