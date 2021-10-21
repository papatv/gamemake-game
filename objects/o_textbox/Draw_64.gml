//Draw Textbox
draw_sprite(box, 0, box_x, box_y);

// Draw portrait back
draw_sprite(frame, 0, port_x, port_y);

//Draw portrait
draw_sprite(portrait, portrait_index, port_x, port_y);

//Draw Frame
draw_sprite(frame, 1, port_x, port_y);

//Draw Namebox
draw_sprite(namebox, 0, namebox_x, namebox_y)

//-----	TEXT
draw_set_font(font)
// Draw Name
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(name_text_x, name_text_y, name, 0.5, 0.5, 0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


//Draw Text
if (!pause and counter < str_length) {
	counter ++;
	if (counter mod 4 == 0) {
	audio_play_sound(voice, 10, false);
	}
	switch(string_char_at(text_wrapped, counter)) {
		case",": pause = true; alarm[1] = 15; break;
		case".":
		case"?":
		case"!": pause = true; alarm[1] = 25; break;
	}
} 

var substr = string_copy(text_wrapped, 1, counter)
draw_text_transformed(text_x, text_y, substr, 0.5, 0.5, 0)

