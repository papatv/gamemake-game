enum options {
	continue_game,
	new_game,
	credits,
	quit
}

menu_color_ = make_color_rgb(247, 243, 143);
menu_dark_color_ = make_color_rgb(126, 127, 81);

option_ [options.continue_game] = "continue";
option_ [options.new_game] = "new game";
option_ [options.credits] = "credits";
option_ [options.quit] = "quit";

option_length_ = array_length_1d(option_);

index_ = options.continue_game;