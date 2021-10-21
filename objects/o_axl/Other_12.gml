/// @description idle
image_index = 0;
image_speed = 0;

if alarm[1] <= 0 {
	alarm[1] = random_range(1, 3) * global.one_second;
	state_ = axl.move;
	direction_ = random(360);
}
