if (!instance_exists(obj_player) && !gameover_sequence && !player_win)
{
	gameover_sequence = layer_sequence_create("Sequences", room_width / 2, room_height / 2, sq_gameover);
}