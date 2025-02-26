function scr_move_horizontal()
{
	if(keyboard_check(vk_left) && keyboard_check(vk_right))
	{
		moving_right = false
		moving_left = false
		hspeed = 0
	}
	else if(keyboard_check(vk_right))
	{
		moving_right = true
		hspeed = move_speed	
	}
	else if(keyboard_check(vk_left))
	{
		moving_left = true
		hspeed = -move_speed		
	}
	else
	{
		moving_right = false
		moving_left = false
		hspeed = 0
	}
	
}