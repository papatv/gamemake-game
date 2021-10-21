draw_sprite(s_medium_shadow, 0, x, y);
draw_self();
if sprite_exists(found_item_sprite_){
	draw_sprite(found_item_sprite_, 0, x, y-32);	
}
draw_self_flash(c_white, 8, alarm[0]);

//Draw Game Saved Notification

