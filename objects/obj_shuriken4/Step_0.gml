event_inherited()

if(!obj_game_handler.game_paused)
{
	image_speed = 1
	
	// Increment the orbit angle
	orbit_angle = obj_shuriken.orbit_angle + 270

	// Keep orbitAngle in the 0–359 range (not strictly necessary, but can help readability)
	orbit_angle = orbit_angle mod 360

	// Calculate the new position using lengthdir_x() and lengthdir_y()
	x = obj_player1.x + lengthdir_x(100, orbit_angle)
	y = obj_player1.y + lengthdir_y(100, orbit_angle)	
}
else
{
	image_speed = 0	
}

