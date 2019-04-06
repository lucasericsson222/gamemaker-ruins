
//player health bar
draw_set_color(c_green)
if (global.player_health > 0) {
draw_rectangle(10,10,global.player_health+ 10,25,false);
} else {

	instance_destroy(obj_player);

}