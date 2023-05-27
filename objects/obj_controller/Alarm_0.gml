/// @description Creating enemies

randomize();
var _random_x = irandom_range(64, 1888);
var _random_y = irandom_range(-96, -1504);
instance_create_layer(_random_x, _random_y, "Enemies", obj_enemy_1);

alarm[0] = room_speed;