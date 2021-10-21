/// @description wait state
image_speed = 0;
apply_friction_to_movement_entity();

if !instance_exists(o_textbox) {
	not_talking_ = true;
	state_ = starting_state_;
}

