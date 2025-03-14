if(!other.invincible && !obj_game_handler.game_paused)
{

	other.invincible = true
	other.alarm[2] = other.i_frames
	other.hp -= damage 
	if(other.hp <= 0)
	{
		instance_destroy(other)
	}
	
	other.image_blend = make_colour_rgb(255, 68, 0)
	other.alarm[1] = 20
}
else if(obj_game_handler.game_paused)
{
	other.alarm[2] = other.i_frames	
}