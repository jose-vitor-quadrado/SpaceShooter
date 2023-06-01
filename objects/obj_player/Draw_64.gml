var _sprite_x = sprite_height * 0.3;
var _sprite_y = _sprite_x;

var _spacing = 40;
var _multiplier = 0;

var _calc_x;

repeat (life)
{
	_calc_x = _sprite_x + _spacing * _multiplier;

	draw_sprite_ext(spr_player, 0, _calc_x, _sprite_y, 0.3, 0.3, 0, c_white, 0.3);
	
	_multiplier++;
}