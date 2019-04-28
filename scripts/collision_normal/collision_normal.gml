var xx  = argument[0];
var yy  = argument[1];
var obj = argument[2];
var rad = 4;
var res = 1;
if (argument_count > 3) rad = argument[3];
if (argument_count > 4) res = argument[4];
if (rad <= 0) rad = 4;
if (res <= 0) res = 1;
var nx = 0;
var ny = 0;
if (collision_circle(xx, yy, rad, obj, true, true)) {
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
if (nx == 0 && ny == 0) return (-1);
	return point_direction(0, 0, nx, ny);
}else{
	return (-1);
}