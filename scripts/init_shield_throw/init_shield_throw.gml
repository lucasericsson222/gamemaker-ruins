//set original x & y coordinates
// the 8 is because of the offset of the player model
x = obj_player.x + 8;
y = obj_player.y;

// set shield variables
spin_speed = 5;
returning = false;
shield_speed = 10; // speed that shield travels
block = false; // variable for one time use
timer = 0; // used to make sure that shield doesn't kill itself before it returns