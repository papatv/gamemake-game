get_input = 0;
check_pad_ = 1;
event_user(get_input);

keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("J"), ord("X"));
keyboard_set_map(ord("K"), ord("Z"));
keyboard_set_map(ord("E"), vk_enter);
keyboard_set_map(vk_escape, vk_enter);
