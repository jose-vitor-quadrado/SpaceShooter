event_inherited();

can_move_to_side = true;

shoting = function() 
{
	if (y > 0)
	{
		instance_create_layer(x, y + sprite_height / 3, "Shots", obj_enemy_2_shot);	
	}
}