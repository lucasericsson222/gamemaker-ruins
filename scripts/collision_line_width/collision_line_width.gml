var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var w = argument4;
var obj = argument5;

if (!instance_exists(obj_sensor)) {

	instance_create_depth(0,0,0,obj_sensor);

}
obj_sensor.x = x1;
obj_sensor.y = y1;
obj_sensor.image_angle = point_direction(x1,y1,x2,y2);
obj_sensor.image_xscale = point_distance(x1,y1,x2,y2);
obj_sensor.image_yscale = w / sprite_get_height(obj_sensor.sprite_index);

return place_meeting(obj.x,obj.y,obj_sensor);