mouse_left = mouse_check_button_pressed(mb_left);

// test if shield exists, then test if player clicks, then throw shield
if (instance_exists(obj_shield)) {
	
	if (mouse_left == 1) {

		instance_create_depth(x,y,-10, obj_shield_thrown);
		instance_destroy(obj_shield);

	}
}
// move shield to follow player, but only if it exists
with (global.shield) {
	if (instance_exists(obj_player)) {
		x = obj_player.x+8;
		y = obj_player.y;	
	}
		sprite_index = spr_shield;
		image_angle = point_direction(x,y,mouse_x,mouse_y);
		
}
