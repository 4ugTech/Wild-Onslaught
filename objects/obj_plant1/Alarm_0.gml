if(place_meeting(x, y, obj_player1))
{
	obj_game_handler.hp -= 10
	if(obj_game_handler.hp < 0)
	{
		instance_destroy(obj_player1)	
	}
	
}

