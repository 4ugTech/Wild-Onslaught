if(!recycled)
{
	obj_game_handler.total_kills++

	instance_create_layer(x, y, "Instances", anim_death)
	instance_create_layer(x, y, "Instances", obj_xp1)	
}

instance_destroy(obj_boss_shuriken)
instance_destroy(obj_boss_shield)