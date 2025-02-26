obj_game_handler.hp -= 10
if(obj_game_handler.hp <= 0)
{
	instance_destroy(other)
}

instance_destroy()