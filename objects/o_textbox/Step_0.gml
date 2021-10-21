if o_input.action_one_pressed_ || o_input.action_two_pressed_ {
	if (counter < str_length) { counter = str_length }
	
	else if(page < array_length_1d(text) - 1) {
		page ++;
		event_perform(ev_other, ev_user1); 
	} else { 
		instance_destroy();
		}
}