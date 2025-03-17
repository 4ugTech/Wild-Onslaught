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
}
else
{
	image_speed = 0	
}

//Do damage to enemies only if they don't have a shield
if(place_meeting(x, y, obj_boss_shield))
{
	if(!obj_game_handler.game_paused)
	{
		if(!obj_boss_shield.invincible)
		{
			obj_boss_shield.image_blend = make_colour_rgb(255, 68, 0)
			obj_boss_shield.alarm[0] = 20
			obj_boss_shield.hp -= damage 
			if(obj_boss_shield.hp <= 0)
			{
				instance_destroy(obj_boss_shield)
			}
		}
		if(instance_exists(obj_boss_shield))
		{
			obj_boss_shield.invincible = true
			obj_boss_shield.alarm[1] = 2
		}	
	}
	else if(obj_game_handler.game_paused)
	{
		obj_boss_shield.alarm[1] = 2
	}	
}
else if(place_meeting(x, y, obj_plant1))
{
	var instance = instance_place(x, y, obj_plant1)
	if(!obj_game_handler.game_paused)
	{
		if(!instance.invincible)
		{
			instance.image_blend = make_colour_rgb(255, 68, 0)
			instance.alarm[1] = 20
			instance.hp -= damage 
			if(instance.hp <= 0)
			{
				instance_destroy(instance)
			}
		}
		if(instance_exists(instance))
		{
			instance.invincible = true
			instance.alarm[2] = 2
		}	
	}
	else if(obj_game_handler.game_paused)
	{
		instance.alarm[2] = 2
	}
}
