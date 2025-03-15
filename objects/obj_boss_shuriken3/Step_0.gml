if(!obj_game_handler.game_paused)
{
	if(instance_exists(origin))
	{
		image_speed = 1
	
		// Increment the orbit angle
		orbit_angle = obj_boss_shuriken.orbit_angle + 90

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

