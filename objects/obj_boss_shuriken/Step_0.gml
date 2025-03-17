if(!obj_game_handler.game_paused)
{
	if(instance_exists(origin))
	{
		image_speed = 1
	
		// Increment the orbit angle
		orbit_angle += orbit_speed

		// Keep orbitAngle in the 0–359 range (not strictly necessary, but can help readability)
		orbit_angle = orbit_angle mod 360

		// Calculate the new position using lengthdir_x() and lengthdir_y()
		x = origin.x + lengthdir_x(100, orbit_angle)
		y = origin.y + lengthdir_y(100, orbit_angle)	
	}
	else
	{
		instance_destroy()	
	}
}
else
{
	image_speed = 0	
}

//Do damage to enemies only if they don't have a shield
if(place_meeting(x, y, obj_shield))
{
	if(!obj_game_handler.game_paused)
	{
		if(!obj_shield.invincible)
		{
			obj_shield.image_blend = make_colour_rgb(255, 0, 255)
			obj_shield.alarm[0] = 20
			obj_shield.hp -= damage 
			if(obj_shield.hp <= 0)
			{
				instance_destroy(obj_shield)
			}
		}
		if(instance_exists(obj_shield))
		{
			obj_shield.invincible = true
			obj_shield.alarm[1] = 2
		}	
	}
	else if(obj_game_handler.game_paused)
	{
		obj_shield.alarm[1] = 2
	}	
}
else if(place_meeting(x, y, obj_player1))
{
	if(!obj_game_handler.game_paused)
	{
		if(!obj_player1.invincible)
		{
			obj_player1.image_blend = make_colour_rgb(255, 68, 0)
			obj_player1.alarm[2] = 20
			obj_game_handler.hp -= damage 
			if(obj_game_handler.hp <= 0)
			{
				instance_destroy(obj_player1)
			}
		}
		if(instance_exists(obj_player1))
		{
			obj_player1.invincible = true
			obj_player1.alarm[3] = 2
		}	
	}
	else if(obj_game_handler.game_paused)
	{
		obj_player1.alarm[3] = 2
	}
}
