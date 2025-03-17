if(instance_exists(obj_boss))
{
	x = obj_boss.x
	y = obj_boss.y -10
}
if(obj_game_handler.game_paused)
{
	image_speed = 0
}
else
{
	image_speed = 1	
}