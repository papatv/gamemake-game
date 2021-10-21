initialize_movement_entity(.5, 1, o_solid);
initialize_hurtbox_entity();
image_speed = 0;
acceleration_ = 0.5;
max_speed_ = 1.5;
roll_speed_ = 2;
direction_facing_ = dir.right;
roll_direction_ = 0;
game_saved_ = false;
found_item_sprite_ = noone;

portrait_index = 3;
voice = s_voice1;
name = "nikki";
text = ["This person has nothing to say"] ;
speakers = [id];

alarm[1] = global.one_second;

//idle alarm
alarm[4] = global.one_second*5;


enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit,
	game_over,
	npc,
	idle
}

//directions enum 
enum dir {
	right,
	up,
	left,
	down
}

enum action{
	one,
	two
}

starting_state_ = player.move;
state_ = player.move;
action_ = noone;

//sprite move lookup table
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;

//attack lookup table
sprite_[player.sword, dir.right] = s_player_attack_right;
sprite_[player.sword, dir.up] = s_player_attack_up;
sprite_[player.sword, dir.left] = s_player_attack_right;
sprite_[player.sword, dir.down] = s_player_attack_down;

//evade lookup table
sprite_[player.evade, dir.right] = s_player_roll_right;
sprite_[player.evade, dir.up] = s_player_roll_up;
sprite_[player.evade, dir.left] = s_player_roll_right;
sprite_[player.evade, dir.down] = s_player_roll_down;

//hit lookup table
sprite_[player.hit, dir.right] = s_player_run_right;
sprite_[player.hit, dir.up] = s_player_run_up;
sprite_[player.hit, dir.left] = s_player_run_right;
sprite_[player.hit, dir.down] = s_player_run_down;

//bow lookup table
sprite_[player.bow, dir.right] = s_player_bow_right;
sprite_[player.bow, dir.up] = s_player_bow_up;
sprite_[player.bow, dir.left] = s_player_bow_right;
sprite_[player.bow, dir.down] = s_player_bow_down;


//bomb lookup table
sprite_[player.bomb, dir.right] = s_player_run_right;
sprite_[player.bomb, dir.up] = s_player_run_up;
sprite_[player.bomb, dir.left] = s_player_run_right;
sprite_[player.bomb, dir.down] = s_player_run_down;

//found item table
sprite_[player.found_item, dir.right] = s_player_found_item;
sprite_[player.found_item, dir.up] = s_player_found_item;
sprite_[player.found_item, dir.left] = s_player_found_item;
sprite_[player.found_item, dir.down] = s_player_found_item;

//idle lookup table
sprite_[player.idle, dir.right] = s_nikki_idle1;
sprite_[player.idle, dir.up] = s_nikki_idle1;
sprite_[player.idle, dir.left] = s_nikki_idle1;
sprite_[player.idle, dir.down] = s_nikki_idle1;
