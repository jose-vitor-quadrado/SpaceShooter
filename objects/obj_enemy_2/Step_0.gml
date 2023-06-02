event_inherited();

if (y > room_height / 3 && can_move_to_side) 
{
	if (x > room_width / 2)
	{
		hspeed = -4;
		
		can_move_to_side = false;
	}
	else
	{
		hspeed = 4;
		
		can_move_to_side = false;
	}
}