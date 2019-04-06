/// @description shoot bullets
enemy_shoot();
if (enemy_health<= 0) {

	instance_destroy(self);

}