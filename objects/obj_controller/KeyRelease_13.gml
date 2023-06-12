if (gameover_sequence)
{
	var _transition = instance_create_layer(0, 0, "Player", obj_transition);
	_transition.destination = rm_home;
}