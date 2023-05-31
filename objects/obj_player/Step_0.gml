// player movement
var _up, _down, _left, _right;
_up	   = keyboard_check(ord("W"));
_down  = keyboard_check(ord("S"));
_left  = keyboard_check(ord("A"));
_right = keyboard_check(ord("D"));

y += (_down	- _up) * player_speed;
x += (_right - _left) * player_speed;

shoting();

//if (keyboard_check_pressed(vk_up) && shot_level < 5)
//{
//	shot_level++;
//}

//if (keyboard_check_pressed(vk_down) && shot_level > 1)
//{
//	shot_level--;	
//}

//if (keyboard_check_pressed(vk_left) && shot_delay > 20)
//{
//	shot_delay *= 0.9;
//}

//if (keyboard_check_pressed(vk_right))
//{
//	shot_delay *= 1.1;
//}