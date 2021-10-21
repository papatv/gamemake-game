if room = r_title {
	exit;	
}

if room = r_game_over {
	exit;
}

if paused_ {
	var _array_size = array_length_1d(global.inventory);
	if o_input.right_pressed_ {
		item_index_ = min(item_index_ +1, _array_size-1)
		audio_play_sound(a_menu_move, 1, false);
	}
	
		if o_input.left_pressed_ {
		item_index_ = max(item_index_ - 1, 0)
		audio_play_sound(a_menu_move, 1, false);
	}
	
	if o_input.action_one_pressed_ {
		global.item[0] = global.inventory[item_index_];
		audio_play_sound(a_menu_select, 3, false);
	}
	
		if o_input.action_two_pressed_ {
		global.item[1] = global.inventory[item_index_];
		audio_play_sound(a_menu_select, 3, false);
	}
}

//pausing
if o_input.pause_pressed_ {
	if paused_ {
		paused_ = false;
		if sprite_exists(paused_sprite_) {
			sprite_delete(paused_sprite_);	
		}
		instance_activate_all();
		audio_play_sound(a_unpause, 5, false);
	} else {
		paused_ = true;
		paused_sprite_ = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], false, false, 0, 0);
		instance_deactivate_all(true);
		var _array_size = array_length_1d(global.inventory);
		for (var _i = 0; _i < _array_size; _i++) {
			instance_activate_object(global.inventory[_i]);	
		}
		instance_activate_object(o_input);
		audio_play_sound(a_pause, 5, false);
	}
}