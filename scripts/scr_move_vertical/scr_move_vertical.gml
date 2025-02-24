function scr_move_vertical()
{
	if(keyboard_check(vk_up) && keyboard_check(vk_down))
	{
		vspeed = 0
		moving_up = false
		moving_down = false
	}
	else if(keyboard_check(vk_up))
	{
		vspeed = -move_speed
		moving_up = true
	}
	else if(keyboard_check(vk_down))
	{
		vspeed = move_speed
		moving_down = true
	}
	else
	{
		vspeed = 0
		moving_up = false
		moving_down = false
	}
}