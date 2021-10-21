initialize_movement_entity(1, .5, o_solid);
not_talking_ = true;
starting_state_ = noone;

portrait_index = 0;
voice = s_voice1;
name = "Anon";
text = ["This person has nothing to say"] ;
speakers = [id];

state_ = starting_state_;
enum talking {
	activate,
	wait
}
