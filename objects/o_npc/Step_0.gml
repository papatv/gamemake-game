if state_ != noone {
	event_user(state_);
}

if distance_to_object(o_player) < 10 { 
	state_ = talking.wait;
	//set sprite facing (based on bat chase code)
	var _direction = point_direction(x, y, o_player.x, o_player.y);
	var _x_speed = lengthdir_x(speed_,_direction);
	if _x_speed != 0 {
	image_xscale = sign(_x_speed);
	}
}
