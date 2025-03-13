// Restart game after death with "enter"
if(room == EmeraldForest && hp <= 0)
{
	with(obj_magic_bolt) {
        instance_destroy();
    }
    with(obj_plant2_projectile) {
        instance_destroy();
    }
    room_goto(rm_death_screen);
}

//Close game with "escape"
if(keyboard_check_pressed(vk_escape) && game_paused == false)
{
    game_paused = true
	show_debug_message("game paused")
}
else if(keyboard_check_pressed(vk_escape))
{
	game_paused = false	
	show_debug_message("game unpaused")

}

if(game_paused)
{
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
