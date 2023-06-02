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