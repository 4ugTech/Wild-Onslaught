//Switch to death screen on player death
if(room == EmeraldForest && hp <= 0)
{
    room_goto(rm_death_screen)
	audio_play_sound(snd_death_screen, 1, 0)
}

if(room == EmeraldForest)
{
	seconds = floor(in_game_frame / 60)	
	if(seconds >= 60)
	{
		minutes++	
		in_game_frame = 0
	}
}

if(room != EmeraldForest)
{
	audio_stop_sound(snd_shuriken)	
}

//check if XP bar is filled
if(xp >= 100 && !instance_exists(obj_powerup_menu))
{
    // Create powerup menu
    instance_create_layer(0, 0, "Instances", obj_powerup_menu);
    
    // Pause the game
    powerup_menu = true;
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
if(game_paused && !powerup_menu)
{
	audio_pause_sound(snd_gameplay_music)	
}
else
{
	audio_resume_sound(snd_gameplay_music)	
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
	if(instance_exists(obj_player1))
	{
		if(!instance_exists(obj_shield) && shield_level >= 1)
		{
			if(alarm[1] == -1)
			{
				alarm[1] = shield_cooldown	        
			}   
		}	
	}
	
	//Restores boss shield
	if(instance_exists(obj_boss))
	{
		if(!instance_exists(obj_boss_shield))
		{
			if(alarm[2] == -1)
			{
				alarm[2] = boss_shield_cooldown	        
			}   
		}	
	}
	
	//Spawn Boss
	if(minutes == 5 && seconds == 0 && !boss_spawned)
	{
		instance_destroy(obj_spawner_plant1)
		
		if(instance_exists(obj_plant1))
		{
			with(obj_plant1)
			{	
				recycled = true
				instance_destroy()
			}
		}
		
		// Choose a random edge (0 = top, 1 = bottom, 2 = left, 3 = right)
		var x1 = obj_player1.x - 427
		var y1 = obj_player1.y - 283
		var x2 = obj_player1.x + 427 
		var y2 = obj_player1.y + 283

		var edge = irandom(3);
		var spawn_x, spawn_y;

		if (edge == 0) 
		{
			// Top edge
			spawn_x = random_range(x1, x2);
			spawn_y = y1;
		} 
		else if (edge == 1) 
		{
			// Bottom edge
			spawn_x = random_range(x1, x2);
			spawn_y = y2;
		} 
		else if (edge == 2) 
		{
			// Left edge
			spawn_x = x1;
			spawn_y = random_range(y1, y2);
		} 
		else 
		{
			// Right edge
			spawn_x = x2;
			spawn_y = random_range(y1, y2);
		}
		instance_create_layer(spawn_x, spawn_y, "Instances", obj_boss);
		
		boss_spawned = true
	}
	
	if(boss_killed && room == EmeraldForest)
	{
		game_paused = true
		alarm[3] = 60
	}
}
