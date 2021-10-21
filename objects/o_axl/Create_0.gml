/// @description test npc
event_inherited();
initialize_movement_entity(0.5, 0.5, o_solid);

portrait_index = 4;
voice = s_voice1;
name = "Porky";
text = ["I'm gonna sting you", "lil bitch."] ;
speakers = [id, id];

enum axl {
	activate,
	wait,
	idle,
	move,
}

starting_state_ = axl.idle;
state_ = starting_state_;

image_index = 0;
image_xscale = choose(1, -1);

alarm[1] = random_range(0,1) * global.one_second;