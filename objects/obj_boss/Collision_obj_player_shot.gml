if (current_state != "state 4")
{
	if (current_life > 0)
	{
		current_life--;	
	}
	else 
	{
		instance_destroy();
	}

	instance_destroy(other);	
}