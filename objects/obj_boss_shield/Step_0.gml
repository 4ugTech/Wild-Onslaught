if(instance_exists(origin))
{
	x = origin.x
	y = origin.y -10
}
if(obj_game_handler.game_paused)
{
	image_speed = 0
}
else
{
	image_speed = 1	
}