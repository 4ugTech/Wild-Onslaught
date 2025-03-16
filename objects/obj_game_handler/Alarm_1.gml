if(instance_exists(obj_player1) && shield_level >= 1)
{
	instance_create_depth(obj_player1.x, obj_player1.y, 50, obj_player1.anim_shield)
}