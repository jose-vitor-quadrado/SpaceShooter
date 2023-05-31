instance_create_layer(x, y, "Shots", obj_enemy_impact);

if (instance_exists(obj_controller))
{
	obj_controller.earn_score(score_amount);
}

drop_item(drop_chance);