///@description destroy instance after one step so that
// collsion code can run and there are not lines
// filling up the screen
if (death_timer>0) {

	instance_destroy(id);

}
death_timer++;