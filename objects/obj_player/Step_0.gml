/// @description Move & Move Camera
get_input();
if(key_dash == 1) {

	pstate = pstates.dashing;
	dash_timer = 5;
}
switch(pstate) {
	case pstates.normal:
		move_player();
		break;
	case pstates.dashing:
		dash_player();
		break;
	default: 
		move_player();
		break;
}



