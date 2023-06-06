if (image_alpha < 1 && !first_shot)
{
	image_alpha += 1 / room_speed;	
}

if (scale > 1.5 || scale < 1)
{
	increase_scale *= -1;
}

scale += increase_scale;