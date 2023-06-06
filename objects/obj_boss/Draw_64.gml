var _life = (current_life / max_life) * 100;

draw_healthbar(300, 15, display_get_gui_width() - 300, 25, _life, c_black, c_red, c_lime, 0, true, 1);