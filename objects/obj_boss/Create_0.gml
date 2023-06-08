// State 1 = stopped shoting shot 2
// State 2 = moving shoting shot 1
// State 3 = stopped shoting shot 1 and 2
// Special state 1 or State 4 = Invulnerable and create 2 minions to heal it self

randomize();

max_life = 1500;
current_life = 1;

current_state = choose("state 1", "state 2", "state 3");

shot_delay = room_speed / 2;

shot_wait = 0;

state_delay = room_speed * 10;

state_wait = state_delay;

boss_hspeed = 3;

create_minions = true;

shot_1 = function()
{
	instance_create_layer(x, y + 80, "Shots", obj_enemy_2_shot);
}

shot_2 = function()
{
	var _posx = 160;
	instance_create_layer(x - _posx, y + 10, "Shots", obj_enemy_1_shot);		
	instance_create_layer(x + _posx, y + 10, "Shots", obj_enemy_1_shot);
}

movement = function()
{
	x += boss_hspeed;
		
	if (x >= room_width - 288 || x <= 288)
	{
		boss_hspeed = -boss_hspeed;	
	}
}

state_1 = function()
{
	shot_wait--;
		
	if (shot_wait <= 0)
	{	
		shot_1();
			
		shot_wait = shot_delay;
	}
}

state_2 = function()
{
	movement();
		
	shot_wait--;
	
	if (shot_wait <= 0)
	{
		shot_2();
		
		shot_wait = shot_delay * 2;
	}
}

state_3 = function()
{
	shot_wait--;
	
	if (shot_wait <= 0)
	{
		shot_1();
		
		shot_wait = shot_delay * 2;
	}
	
	if (shot_wait == shot_delay)
	{
		shot_2();
	}
}

state_4 = function()
{
	sprite_index = spr_boss_out;
	
	x += sign(room_width / 2 - x);
	
	if (create_minions)
	{
		var _minion = instance_create_layer(128, 672, "Enemies", obj_boss_minion);
		_minion.image_angle = 90;
	
		_minion = instance_create_layer(room_width - 128, 672, "Enemies", obj_boss_minion);
		_minion.image_angle = 270;
	}
	
	create_minions = false;
}

change_states = function() 
{
	if (current_state != "state 4")
	{
		sprite_index = spr_boss_combat;
	}

	state_wait--;

	if (state_wait <= 0)
	{
		if (current_life > max_life / 2)
		{
			current_state = choose("state 1", "state 2", "state 3");
		}
		else
		{
			current_state = choose("state 1", "state 2", "state 3", "state 4");
		}
	
		state_wait = state_delay;
	
		create_minions = true;
	}
	
	switch (current_state)
	{
		case "state 1":
			state_1();
			break;
		case "state 2":
			state_2();
			break;
		case "state 3":
			state_3();
			break;
		case "state 4":
			state_4();
			break;
		default:
			change_states();
			break;
	}
}