event_inherited();

starting_state_ = buying.wait;
state_ = starting_state_;
not_buying_ = true;
item_name_ = 0;


enum buying {
	activate,
	wait
}