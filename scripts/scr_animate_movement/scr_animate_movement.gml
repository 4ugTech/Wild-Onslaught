function scr_animate_movement()
{
	if(moving_right && moving_up)
	{
		image_speed = 1
		if(sprite_index != anim_walk_up_right)
		{
			image_index = 0
			sprite_index = anim_walk_up_right
		}

	}
	else if(moving_right && moving_down)
	{
		image_speed = 1
		sprite_index = anim_walk_down_right
	}
	else if(moving_left && moving_up)
	{
		image_speed = 1
		sprite_index = anim_walk_up_left
	}
	else if(moving_left && moving_down)
	{
		image_speed = 1
		sprite_index = anim_walk_down_left
	}
	else if(moving_right)
	{
		image_speed = 1
		sprite_index = anim_walk_right
	}
	else if(moving_left)
	{
		image_speed = 1
		if(sprite_index != anim_walk_left)
		{
			image_index = 0
			sprite_index = anim_walk_left
		}
	}
	else if(moving_up)
	{
		image_speed = 1
				sprite_index = anim_walk_up
	}
	else if(moving_down)
	{
		image_speed = 1
		sprite_index = anim_walk_down
	}
	else
	{
		image_speed = 0	
	}
}