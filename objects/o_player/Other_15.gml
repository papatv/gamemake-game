/// @description Found Item State
if alarm[3] <= 0 or o_input.action_one_pressed_ or o_input.action_two_pressed_ {
	state_ = starting_state_;
	found_item_sprite_ = noone;
	invincible_ = false;
}