if(instance_exists(obj_player1))
{
	x = obj_player1.x
	y = obj_player1.y
}
if(obj_game_handler.game_paused)
{
	image_speed = 0
}
else
{
	image_speed = 1	
}