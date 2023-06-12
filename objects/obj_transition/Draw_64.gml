var _x = display_get_gui_width();
var	_y = display_get_gui_height();

draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, _x, _y, false);
draw_set_color(c_white);
draw_set_alpha(1);