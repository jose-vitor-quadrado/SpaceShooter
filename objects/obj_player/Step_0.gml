var _up, _down, _left, _right, _shield;
_up	    = keyboard_check(ord("W"));
_down   = keyboard_check(ord("S"));
_left   = keyboard_check(ord("A"));
_right  = keyboard_check(ord("D"));
_shield = keyboard_check_pressed(ord("E"));

y += (_down	- _up) * player_speed;
x += (_right - _left) * player_speed;

x = clamp(x, 64, room_width - 64);
y = clamp(y, 64, room_height - 64);

if (_shield && shields > 0)
{
	var _player_shield = instance_create_layer(x, y, "Shield", obj_player_shield);
	
	_player_shield.target = id;
	
	shields--;
}

shoting();