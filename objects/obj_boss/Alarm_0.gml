if(place_meeting(x, y, obj_shield))
{
	obj_shield.hp -= damage
	obj_shield.image_blend = make_colour_rgb(255, 0, 255)
	obj_shield.alarm[0] = 20
	if(obj_shield.hp <= 0)
	{
		obj_shield.alarm[1] = obj_shield.cooldown
		instance_destroy(obj_shield) 	
	}
}
else if(place_meeting(x, y, obj_player1))
{
	obj_game_handler.hp -= damage
	obj_player1.image_blend = make_colour_rgb(255, 68, 0)
	obj_player1.alarm[2] = 20
	if(obj_game_handler.hp <= 0)
	{
		instance_destroy(obj_player1)	
	}
}
