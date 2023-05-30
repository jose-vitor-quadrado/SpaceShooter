vspeed = 3;

score_amount = 10;

alarm[0] = random_range(1, 3) * room_speed;

if (place_meeting(x, y, obj_enemy_1))
{
	instance_destroy(id, false);
}

shoting = function()
{
	if (y > 0)
	{
		instance_create_layer(x - 3, y + sprite_height / 3, "Shots", obj_enemy_1_shot);
	}	
}