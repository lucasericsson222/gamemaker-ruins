camera = camera_create();
var new_x = (mouse_v * x) + mouse_x - x;
var new_x = new_x / mouse_v;
var new_y = (mouse_v* y) + mouse_y - y;
var new_y = new_y / mouse_v;

var vm = matrix_build_lookat(new_x,new_y,-100,new_x,new_y,0,0,1,0);
var pm = matrix_build_projection_ortho(640,480,1, 10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

