event_inherited();

score_amount = 20;

can_move_to_side = true;

drop_chance = 35;

shoting = function() 
{
	if (y > 0)
	{
		instance_create_layer(x, y + sprite_height / 3, "Shots", obj_enemy_2_shot);
		
		audio_play_sound(sfx_laser1, 1, false);
	}
}