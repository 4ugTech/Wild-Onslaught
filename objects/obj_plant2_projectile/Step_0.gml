if(obj_game_handler.game_paused == true)
{
	speed = 0
	image_speed = 0
	if(!alarm_paused)
	{
		temp_alarm = alarm[0]
		alarm[0] = -1
		alarm_paused = true
	}	
}
else
{
	speed = move_speed
	image_speed = 1
	if(alarm_paused)
	{
		alarm[0] = temp_alarm
		alarm_paused = false
	}
}
    
   
    
	