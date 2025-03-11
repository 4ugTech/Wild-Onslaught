if(place_meeting(x, y, obj_player1))
{
	obj_game_handler.hp -= 10
	obj_player1.image_blend = make_colour_rgb(255, 68, 0)
	obj_player1.alarm[2] = 20
	if(obj_game_handler.hp <= 0)
	{
		instance_destroy(obj_player1)	
	}
}

