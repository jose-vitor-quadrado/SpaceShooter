alarm[0] = room_speed;

player_score = 0;

level = 1;

next_level = 10;

///@method earn_score(score)
earn_score = function(_quantity)
{
	player_score += _quantity;
	
	if (player_score > next_level)
	{
		level++;
		next_level *= 2;
	}	
}

///@method create_enemies();
create_enemies = function()
{
	var _random_x = irandom_range(64, 1888);
	var _random_y = irandom_range(-96, -1504);
	
	var _probability = random_range(0, level);
	var _enemy = obj_enemy_1;
	
	if (_probability > 2)
	{
		_enemy = obj_enemy_2;
	}

	instance_create_layer(_random_x, _random_y, "Enemies", _enemy);
}