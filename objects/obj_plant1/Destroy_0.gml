// Check which type of plant is being destroyed
if (object_index == obj_plant1) {
    obj_game_handler.plant1_kills += 1;
} else if (object_index == obj_plant2) {
    obj_game_handler.plant2_kills += 1;
}

obj_game_handler.total_kills += 1;

instance_create_layer(x, y, "Instances", anim_death)
instance_create_layer(x, y, "Instances", obj_xp1)