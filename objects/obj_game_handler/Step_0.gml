
if(room == EmeraldForest && hp <= 0)
{
    room_goto(rm_death_screen);
}



if(game_paused)
{
	//if(!instance_exists(obj_btn_resume))
	//{
	//	instance_create_layer(obj_player1.x, obj_player1.y, "instances", obj_btn_resume)
	//}
	
	
	//Store previous alarm value in temporary values and disable alarms 
	if(!alarm_paused)
	{
		temp_alarm = alarm[0]
		temp_alarm1 = alarm[1]
		alarm[0] = -1
		alarm[1] = -1
		alarm_paused = true
	}
}
else
{
	if(alarm_paused)
	{
		alarm[0] = temp_alarm
		alarm[1] = temp_alarm1
		alarm_paused = false
	}
	//Start game time stopwatch
	if(room == EmeraldForest)
	{
	    in_game = true;
	    if(alarm[0] == -1)
	    {
	        alarm[0] = 1;    
	    }
	}
	else
	{
	    in_game = false;    
	}

	//Restores the players shield after cooldown if unlocked
	if(has_shield == true && !instance_exists(obj_shield))
	{
		if(alarm[1] == -1)
		{
			alarm[1] = shield_cooldown	        
		}   
	}	
}
