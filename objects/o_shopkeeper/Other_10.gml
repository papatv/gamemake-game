/// @description Activate Item Purchase
not_buying_ = false;

if not_buying_ = false {
	instance_create_layer(x,y, "Text", o_textbox);
	o_textbox.name = "Scammy Tammy";
	o_textbox.text[0] = "Are you sure you want to buy these " + item_name_ + " bitch?";
	
	if global.player_gems > price_ {
	o_bomb_item.amount_ = o_bomb_item.amount_ + 3;
	global.player_gems = global.player_gems - price_;
	}
	state_ = buying.wait;
} 