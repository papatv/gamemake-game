//gamepad movement
if gamepad_is_connected(0) {
	gamepad_set_axis_deadzone(0, 0.5);       // Set the "deadzone" for the axis
    gamepad_set_button_threshold(0, 0.1);    // Set the "threshold" for the triggers	
}

//joystick variables
var _xaxis = gamepad_axis_value(0, gp_axislh);
var _yaxis = gamepad_axis_value(0, gp_axislv);
gamepad_left_ = false;
gamepad_right_ = false;
gamepad_up_ = false;
gamepad_down_ = false;

//joystick checks
if _xaxis < -0.5 {
	gamepad_left_ = true;	
} if _xaxis > 0.5 gamepad_right_ = true;

if _yaxis < -0.5 {
	gamepad_up_ = true;	
} if _yaxis > 0.5 gamepad_down_ = true;

//joystick check pressed
gp_check_pressed_up_ = false;
gp_check_pressed_down_ = false;
gp_check_pressed_left_ = false;
gp_check_pressed_right_ = false;

if _yaxis < -0.5 && check_pad_ == 1 {
	gp_check_pressed_up_ = true;
	check_pad_ = 0;
	alarm[0] = global.one_second * .25;
}

if _yaxis > 0.5 && check_pad_ == 1 {
	gp_check_pressed_down_ = true;
	check_pad_ = 0;
	alarm[0] = global.one_second * .25;
}

if _xaxis < -0.5 && check_pad_ == 1 {
	gp_check_pressed_left_ = true;
	check_pad_ = 0;
	alarm[0] = global.one_second * .25;
}

if _xaxis > 0.5 && check_pad_ == 1 {
	gp_check_pressed_right_ = true;
	check_pad_ = 0;
	alarm[0] = global.one_second * .25;
}



// movement checks
right_ = keyboard_check(vk_right) || gamepad_right_;
left_ = keyboard_check(vk_left) || gamepad_left_;
up_ = keyboard_check(vk_up) || gamepad_up_;
down_ = keyboard_check(vk_down) || gamepad_down_;

right_pressed_ = keyboard_check_pressed(vk_right) || gp_check_pressed_right_;
left_pressed_ = keyboard_check_pressed(vk_left) || gp_check_pressed_left_;
up_pressed_ = keyboard_check_pressed(vk_up) || gp_check_pressed_up_;
down_pressed_ = keyboard_check_pressed(vk_down) || gp_check_pressed_down_;

//gamepad buttons actions
gamepad_action_one_pressed_ = gamepad_button_check_pressed(0, gp_face1); 
gamepad_action_two_pressed_ = gamepad_button_check_pressed(0, gp_face3);
gamepad_action_one_ = gamepad_button_check(0, gp_face1);
gamepad_action_two_ = gamepad_button_check(0, gp_face3);

gamepad_pause_pressed_ = gamepad_button_check_pressed(0, gp_start);

action_one_pressed_ = keyboard_check_pressed(ord("Z")) || gamepad_action_one_pressed_;
action_two_pressed_ = keyboard_check_pressed(ord("X")) || gamepad_action_two_pressed_ ;
action_one_ = keyboard_check(ord("Z")) || gamepad_action_one_ ;
action_two_ = keyboard_check(ord("X")) || gamepad_action_two_ ;

pause_pressed_ = keyboard_check_pressed(vk_enter) || gamepad_pause_pressed_;





	 
	
