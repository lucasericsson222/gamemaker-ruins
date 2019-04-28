/// @description collision_line_width
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg width
/// @arg obj
//Requires an object with a sprite that is 1px wide and at least 32 px tall with a middle left origin called obj_sensor.  Or whatever.
//Create and update the sensor.

var _x1=argument[0];
var _y1=argument[1];
var _x2=argument[2];
var _y2=argument[3];
var _w=argument[4] 
var _obj=argument[5];


var sensor = instance_create_depth(0,0,0,obj_sensor);

sensor.x=_x1;
sensor.y=_y1;
sensor.image_angle = point_direction(_x1,_y1,_x2,_y2);
sensor.image_xscale = point_distance(_x1,_y1,_x2,_y2) / sprite_get_width(sensor.sprite_index);
sensor.image_yscale = _w / sprite_get_height(sensor.sprite_index);

return place_meeting(round(_obj.x),round(_obj.y),obj_sensor);
