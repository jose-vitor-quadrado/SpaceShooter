// player movement
var _up, _down, _left, _right, _fire;
_up		= keyboard_check(ord("W"));
_down	= keyboard_check(ord("S"));
_left	= keyboard_check(ord("A"));
_right	= keyboard_check(ord("D"));
_fire	= keyboard_check_pressed(vk_space);

y += (_down	- _up) * player_speed;
x += (_right - _left) * player_speed;

if (_fire) 
{
	instance_create_layer(x, y - sprite_height / 3, "Shots", obj_player_shot);
}