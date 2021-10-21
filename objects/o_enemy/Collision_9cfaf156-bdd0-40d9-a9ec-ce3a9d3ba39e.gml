if health_ <= 0 exit;

if hurtbox_entity_can_be_hit_by(other) {
	invincible_ = true;
	alarm[0] = game_get_speed(gamespeed_fps) * .5;
	health_ -= other.damage_;
	state_ = enemy.hit;
	var _knockback_direction = point_direction(other.x, other.y, x ,y);
	set_movement(_knockback_direction, other.knockback_);
	create_animation_effect(s_hit_effect, x, y-8, 1, true);
	audio_play_sound(a_hit, 7, false);
	if other.destroy_on_contact_ instance_destroy(other);
}