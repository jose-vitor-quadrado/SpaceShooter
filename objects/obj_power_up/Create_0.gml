randomize();

chance = irandom(100);

speed = 2;
direction = irandom(359);

alarm[0] = room_speed;

if (chance >= 90)
{
	// shot level
	color = c_red;
}
else if (chance >= 45)
{
	// shot delay
	color = c_lime;	
}
else
{
	// player speed
	color = c_yellow;
}