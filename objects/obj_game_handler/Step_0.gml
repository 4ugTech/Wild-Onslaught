if(room == EmeraldForest && hp <= 0)
{
    room_goto(rm_death_screen);
	audio_play_sound(snd_death_screen, 1, 0)
}


//check if XP bar is filled
if(xp >= 100 && !instance_exists(obj_powerup_menu))
{
    // Create powerup menu
    instance_create_layer(0, 0, "Instances", obj_powerup_menu);
    
    // Pause the game
    game_powerup_selection = true;
	game_paused = true
}

//play game music
if(in_game && !game_music_playing)
{
	game_music_playing = true
	audio_play_sound(snd_gameplay_music, 1, 1)
}
else if(!in_game)
{
	game_music_playing = false
	audio_stop_sound(snd_gameplay_music)
}

//Pause music if game paused
if(game_paused || game_powerup_selection)
{
	audio_pause_sound(snd_gameplay_music)	
}
else
{
	audio_resume_sound(snd_gameplay_music)	
}

if(game_paused || game_powerup_selection)
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
	if(instance_exists(obj_player1))
	{
		if(has_shield == true && !instance_exists(obj_shield))
		{
			if(alarm[1] == -1)
			{
				alarm[1] = shield_cooldown	        
			}   
		}	
	}
	
}
