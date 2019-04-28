//start x , y and obj to calculate reflection vector
var xx  = argument[0];
var yy  = argument[1];
var obj = argument[2];

//default settings of the radius and resolution to check for
var rad = 4;
var res = 1;

// fancy stuff to make some of the arguemnts optional
if (argument_count > 3) rad = argument[3];
if (argument_count > 4) res = argument[4];

// ensure that the radius and resolution are not 0 otherwise things break
if (rad <= 0) rad = 4;
if (res <= 0) res = 1;

// ensure no "variable is not defined"
var nx = 0;
var ny = 0;

// make sure that there is at least one object to get a collision normal
if (collision_circle(xx, yy, rad, obj, true, true)) {
	
	// circulate through that circle and average the pixels that have a sprite and create vector
	for (var j=res; j<=rad; j+=res) {
		
		for (var i=0; i<rad; i+=res) {
			
			if (point_distance(0, 0, i, j) <= rad) {
				
				if (!collision_point(xx+i, yy+j, obj, true, true)) { nx += i; ny += j; }
				if (!collision_point(xx+j, yy-i, obj, true, true)) { nx += j; ny -= i; }
				if (!collision_point(xx-i, yy-j, obj, true, true)) { nx -= i; ny -= j; }
				if (!collision_point(xx-j, yy+i, obj, true, true)) { nx -= j; ny += i; }
				
			}
		}
	}
	
	// if no vector then return -1
	if (nx == 0 && ny == 0) return (-1);
	
	// otherwise
	return point_direction(0, 0, nx, ny);

} else {
	
	//if no obj in circle return -1
	return (-1); 
	
}