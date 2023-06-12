buttons = [spr_button_start, spr_button_score, spr_button_back];

sprite_index = buttons[sprite];

handle_button = function()
{
	var _transition = instance_create_layer(0, 0, "Player", obj_transition);
	var _destination;
	switch (sprite)
	{
		case 0:
			_destination = rm_level_01;
			break;
		case 1:
			_destination = rm_score;
			break;
		case 2:
			_destination = rm_home;
			break;
		default:
			_destination = rm_home;
			break;
	}	
	_transition.destination = _destination;
}