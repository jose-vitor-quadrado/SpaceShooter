vspeed = 3;

score_amount = 10;

alarm[0] = random_range(1, 3) * room_speed;

drop_chance = 20;

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

///@method drop_item(_drop_chance_in_%)
drop_item = function(_drop_chance) 
{
	var _value = random(100)
	
	if (_value < _drop_chance)
	{
		instance_create_layer(x, y, "Shots", obj_power_up);	
	}
}