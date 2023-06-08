/// @description Creating enemies

randomize();

if (!instance_exists(obj_enemy_1))
{
	var _repeat_times = level * 10;

	if (level < 10)
	{
		repeat (_repeat_times)	
		{
			create_enemies();	
		}
	}
	else if (create_boss)
	{
		layer_sequence_create("Boss_Arrive", room_width / 2, 512, sq_boss_arrive);
		create_boss = false;
	}
}

alarm[0] = room_speed * 5;