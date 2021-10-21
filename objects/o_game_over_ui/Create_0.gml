enum optionsgo {
	continue_game,
	restart,
	quit
}

menu_color_ = make_color_rgb(247, 243, 143);
menu_dark_color_ = make_color_rgb(126, 127, 81);

option_ [optionsgo.continue_game] = "continue from save";
option_ [optionsgo.restart] = "main menu";
option_ [optionsgo.quit] = "quit";

option_length_ = array_length_1d(option_);

index_ = optionsgo.continue_game;

death_time_ = 0;
alarm[0] = global.one_second;