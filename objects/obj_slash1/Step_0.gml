if(obj_game_handler.game_paused == true)
{
	scr_pause_object()	
	if(!alarm_paused)
	{
		temp_alarm = alarm[0]
		alarm_paused = true
	}
}
else
{
	image_speed = 1
	if(alarm_paused)
	{
		alarm[0] = temp_alarm
		alarm_paused = false
	}
	if(instance_exists(obj_player1))
	{
		//Follow player position and orientation
		x = obj_player1.x
		y = obj_player1.y
		if(obj_player1.moving_right)
		{
			image_xscale = 1
		}
		else
		{
			image_xscale = -1	
		}	
		//Start damage timer
		if(alarm[0] == -1)
		{
			audio_play_sound(snd_slash, 1, 0)
			
			//Deal damage to boss shield
			if(place_meeting(x, y, obj_boss_shield))
			{
				obj_boss_shield.image_blend = make_colour_rgb(255, 68, 0)
				obj_boss_shield.alarm[0] = 20
				obj_boss_shield.hp -= damage
				if(obj_boss_shield.hp <= 0)
				{
					instance_destroy(obj_boss_shield)	
				}
			}
			else
			{
				//Deal damage to all enemies that collide 
				with(obj_plant1)
				{
					if(place_meeting(x, y, other))
					{
						image_blend = make_colour_rgb(255, 68, 0)
						alarm[1] = 20
						hp -= other.damage
						if(hp <= 0)
						{
							instance_destroy()
						}
					}
				}
			}
			alarm[0] = obj_player1.attack_cooldown
		}
	}
}






