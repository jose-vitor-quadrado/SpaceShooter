var _sprite_position_x = sprite_height * 0.3;
var _sprite_position_y = _sprite_position_x;

var _spacing = 50;
var _multiplier = 0;

var _calc_position_x;
var _calc_position_y = _sprite_position_y + _sprite_position_x + 20;

repeat (life)
{	
	_calc_position_x = _sprite_position_x + _spacing * _multiplier;
	
	draw_sprite_ext(spr_player, 0, _calc_position_x, _sprite_position_y, 0.3, 0.3, 0, c_white, 0.3);
	
	_multiplier++;
}

_multiplier = 0;

repeat (shields)
{
	_calc_position_x = _sprite_position_x + _spacing * _multiplier;
	
	draw_sprite_ext(spr_player_shield, 2, _calc_position_x, _calc_position_y, 0.3, 0.3, 0, c_white, 0.5);
	
	_multiplier++;
}