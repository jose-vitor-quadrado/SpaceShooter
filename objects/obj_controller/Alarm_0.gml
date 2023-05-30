/// @description Creating enemies

randomize();

if (!instance_exists(obj_enemy_1))
{
	var _repeat_times = level * 10;
	repeat (_repeat_times)	
	{
		create_enemies();	
	}
}

alarm[0] = room_speed * 5;