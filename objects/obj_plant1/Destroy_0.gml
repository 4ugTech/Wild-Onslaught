if(!recycled)
{
	obj_game_handler.total_kills++
	obj_game_handler.obj_plant1_kills++
	instance_create_layer(x, y, "Instances", obj_xp1)	
}

instance_create_layer(x, y, "Instances", anim_death)
