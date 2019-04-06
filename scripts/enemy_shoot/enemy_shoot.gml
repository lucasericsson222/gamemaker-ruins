if (instance_exists(obj_player)){
	chance = random(100);
	variancy = random_range(-10,10);
	if (chance >90) {
		bullet = instance_create_depth(x,y,0,obj_bullet);
		bullet.direction = point_direction(x + variancy,y + variancy,obj_player.x+8,obj_player.y+8);

	}
}