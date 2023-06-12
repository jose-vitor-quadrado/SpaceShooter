function screenshake(_shake)
{
	var _screen = instance_create_layer(0, 0, "Shield", obj_screenshake);
	_screen.shake = _shake;
}

function earning_score(_amount)
{
	if (instance_exists(obj_controller))
	{
		obj_controller.earn_score(_amount);	
	}
}

function destroy_sequence()
{
	var _elements = layer_get_all_elements("Boss_Arrive");
	layer_sequence_destroy(_elements[0]);	
	instance_create_layer(room_width / 2, 256, "Boss", obj_boss); 
}

function create_sequence()
{
	if (instance_exists(obj_player))
	{
		layer_sequence_create("Sequences", obj_player.x, obj_player.y, sq_player_level_end);
		
		instance_destroy(obj_player, false);
		
		if (instance_exists(obj_controller))
		{
			obj_controller.player_win = true;
		}
	}
}

function create_transition()
{
	var _transition = instance_create_layer(0, 0, "Player", obj_transition);
	_transition.destination = rm_home;
}