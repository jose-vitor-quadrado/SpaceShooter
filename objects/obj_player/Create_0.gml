player_speed = 5;

shoting = function()
{
	var _fire = keyboard_check_pressed(vk_space);
	if (_fire)
	{
		instance_create_layer(x, y - sprite_height / 3, "Shots", obj_player_shot);
	}
}