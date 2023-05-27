vspeed = 3;

score_amount = 10;

alarm[0] = random_range(1, 3) * room_speed;

shoting = function()
{
	if (y > 0)
	{
		instance_create_layer(x - 3, y + sprite_height / 3, "Shots", obj_enemy_1_shot);
	}	
}