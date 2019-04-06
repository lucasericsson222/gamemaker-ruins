/// @description Draw Health
var health_in_pixels = (x-8) + ((health_in_pixels_max/enemy_health_max) * enemy_health);
draw_set_color(c_green);
if (enemy_health > 0) {
	draw_rectangle(x-8,y-12,health_in_pixels, y-16, false);
}
draw_self()