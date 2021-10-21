if room == r_title{
	exit;
}

if o_game.paused_{
	exit;	
}


if game_saved_ = true {
			draw_set_halign(fa_center);
			draw_text(camera_get_view_width(view_camera[0])/2, camera_get_view_height(view_camera[0])/2, "Game Saved");
			
		}

