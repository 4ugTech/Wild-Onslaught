part_system_position(part_effects, x, y)

if(obj_game_handler.game_paused == true)
{
	speed = 0
	if(!alarm_paused)
	{
		temp_alarm = alarm[0]
		alarm[0] = -1
		alarm_paused = true
	}	
}
else
{
	speed = bolt_speed	
	if(alarm_paused)
	{
		alarm[0] = temp_alarm
		alarm_paused = false
	}
}

