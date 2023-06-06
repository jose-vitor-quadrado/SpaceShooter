life = 3;

shields = 3;

player_speed = 5;

my_shield = noone;

shot_delay = room_speed;

shot_level = 1;

 shoting = function()
{
	var _fire = keyboard_check(vk_space);
	
	
	if (_fire && alarm[0] == -1)
	{
		alarm[0] = shot_delay;
		
		switch (shot_level)
		{
			case 1:
				shot1();
				break;
			case 2:
				shot2();
				break;
			case 3:
				shot3();
				break;
			case 4:
				shot4();
				break;
			case 5:
				shot5();
				break;
			default:
				shot1();
				break;
		}
	}
}

shot1 = function()
{
	var _shot_y = y - sprite_height / 3;
	
	instance_create_layer(x, _shot_y, "Shots", obj_player_shot);
}

shot2 = function()
{
	var _shot_y = y - sprite_height / 3;
	
	var _shot_1 = instance_create_layer(x - 60, _shot_y + 10, "Shots", obj_player_shot_2);
	_shot_1.hspeed = -5;
					
	var _shot_2 = instance_create_layer(x + 60, _shot_y + 10, "Shots", obj_player_shot_2);
	_shot_2.hspeed = 5;
}

shot3 = function()
{
	shot1();
	shot2();
}

shot4 = function()
{
	var _shot_y = y - sprite_height / 3;
	
	var _direction = 75;
	
	repeat (3)
	{
		var _my_shot = instance_create_layer(x, _shot_y + 10, "Shots", obj_player_shot);
		
		_my_shot.direction = _direction;
		_my_shot.image_angle = _my_shot.direction - 90;
		
		_direction += 15;	
	}	
}

shot5 = function()
{
	shot2();
	shot4();
}

///@method level_up()
level_up = function(_chance)
{
	if (_chance >= 90)
	{
		if (shot_level < 5)
		{
			shot_level++;
		}
		else
		{
			earning_score(100);
		}
	}
	else if (_chance >= 45)
	{
		if (shot_delay > 15)
		{
			shot_delay *= 0.9;
		}
		else
		{
			earning_score(10);
		}
	}
	else 
	{
		if (player_speed < 10)
		{
			player_speed += 0.5;
		}
		else 
		{
			earning_score(10);
		}
	}
}

///@method lose_life()
lose_life = function()
{
	if (!my_shield)
	{
		if (life > 0)
		{
			life--;
		
			screenshake(5);
		
			return;
		}
	}
	instance_destroy();
	
	screenshake(20);
}

create_shield = function()
{
	var _shield = keyboard_check_pressed(ord("E"));
	
	if (_shield && shields > 0 && !my_shield)
	{
		var _player_shield = instance_create_layer(x, y, "Shield", obj_player_shield);
	
		_player_shield.target = id;
	
		my_shield = _shield;
	
		shields--;
	}
}