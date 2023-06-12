if (!changed_room) 
{
	alpha += 0.03;	
}
else 
{
	alpha -= 0.03;
}

if (alpha >= 1 && !changed_room)
{
	room_goto(destination);
}

if (alpha <= 0) 
{
	instance_destroy();	
}