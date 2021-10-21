draw_set_halign(fa_center);
draw_text(x + 50,y, "you died");
for (var _i=0; _i < option_length_ ; _i++) {
	if _i = index_ {
		draw_set_color(menu_color_);
		}else {draw_set_color(menu_dark_color_);}
	draw_text (x + 50, y+_i*12 + 20, option_[_i]);
}
draw_set_color(c_white);
draw_set_halign(fa_left);