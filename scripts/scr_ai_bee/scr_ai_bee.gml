iarray = scr_ai_map();
var wall_mag_dist = 100;
max_speed = 10;

for (i=0;i < array_length_1d(iarray); i++) {

	ixyarray[i,0] = iarray[i];
	ixyarray[i,1] = iarray[i].x;
	ixyarray[i,2] = iarray[i].y;
	
	ixydirarray[i,0] = iarray[i];
	ixydirarray[i,1] = ixyarray[i,1]-x;
	ixydirarray[i,2] = ixyarray[i,2]-y;
	
	imdirarray[i,0] = iarray[i];
	imdirarray[i,1] = point_direction(0,0,ixydirarray[i,1],ixydirarray[i,2]);
	imdirarray[i,2] = point_distance(0,0,ixydirarray[i,1],ixydirarray[i,2]);
	

}

var finalx = 0;
var finaly= 0;
var finalmag = 0;

var cwall = instance_nearest(x,y,obj_wall);
var mag1 = point_distance(x,y,cwall.x,cwall.y);
finalmag = wall_mag_dist-mag1;

for (i=0; i< array_height_2d(ixydirarray); i++) {
	finalx = finalx +  ixydirarray[i,1];
	finaly = finaly + ixydirarray[i,2];
	
	

}
direction = point_direction(x,y,x+finalx,y+finaly);
speed = clamp(finalmag, 0,max_speed);


