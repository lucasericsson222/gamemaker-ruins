/// @description Ensure timer counts up & set image angle

//ensure that the bullet faces toward the direction it is going
image_angle = direction;

//make timer work
timer++;

reverse_timer--;
if (place_meeting(x+hspeed,y+vspeed,obj_shield)) {

		direction = obj_shield.image_angle;
}
