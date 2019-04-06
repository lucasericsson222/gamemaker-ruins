/// @description Destroy self if collided with something other than the shooter

if (timer >= 10) { //ensure that the shooter cant hurt themselves
	
	//create effects
	instance_create_depth(x,y,-10,obj_explosion);
	
	//get rid of waste
	instance_destroy(self);
	
}
