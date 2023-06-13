var _up, _down, _left, _right;
_up	    = keyboard_check(ord("W"));
_down   = keyboard_check(ord("S"));
_left   = keyboard_check(ord("A"));
_right  = keyboard_check(ord("D"));

y += (_down	- _up) * player_speed;
x += (_right - _left) * player_speed;

x = clamp(x, 64, room_width - 64);
y = clamp(y, 64, room_height - 64);

shoting();

create_shield();