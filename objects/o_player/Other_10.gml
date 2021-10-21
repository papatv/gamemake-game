/// @description Move State

image_speed = 0;
var _x_input = o_input.right_ - o_input.left_;
var _y_input = o_input.down_ - o_input.up_;
var _input_direction = point_direction(0 , 0, _x_input, _y_input);
roll_direction_ = direction_facing_*90;



if _x_input == 0 && _y_input == 0 {	
	apply_friction_to_movement_entity();
	} else {
	image_speed = 0.6;
	alarm[4] = global.one_second*5;
	if _x_input != 0 {
		image_xscale = _x_input
	}
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
	roll_direction_ = direction_facing_*90;
}




//uses selected items + script allows interaction with o_interactable + NPC

inventory_use_item(o_input.action_one_pressed_, global.item[0], action.one);
inventory_use_item(o_input.action_two_pressed_, global.item[1], action.two);


move_movement_entity(false);

// stop movement while talking.
if instance_exists(o_textbox) {
	speed_ = 0;
	acceleration_ = 0;
	max_speed_ = 0;
	image_speed = 0;
} else { 
		acceleration_ = 0.5;
		max_speed_ = 1.5;
		roll_speed_ = 2;
}

