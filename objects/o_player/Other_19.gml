/// @description idle state

image_speed = .75;

if o_input.left_pressed_ = true or o_input.right_pressed_ = true or o_input.up_pressed_ = true or o_input.down_pressed_ = true or o_input.action_one_pressed_ = true or o_input.action_two_pressed_ = true {
	state_ = player.move;	
}