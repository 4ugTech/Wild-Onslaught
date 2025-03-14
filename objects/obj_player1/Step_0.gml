if(alarm[0] = -1)
{
	alarm[0] = 1
}

if(obj_game_handler.game_paused)
{
	hspeed = 0
	vspeed = 0
	image_speed = 0
}
else
{
	//Handle horizontal movement
	if(keyboard_check(vk_left) && keyboard_check(vk_right))
	{
		hspeed = 0
	}
	else if(keyboard_check(vk_right))
	{	
		moving_right = true
		moving_left = false
		moving_up = false
		moving_down = false
		hspeed = move_speed	
	}
	else if(keyboard_check(vk_left))
	{
		moving_left = true
		moving_right = false
		moving_up = false
		moving_down = false
		hspeed = -move_speed		
	}
	else
	{	
		hspeed = 0
	}

	//Handle vertical movement
	if(keyboard_check(vk_up) && keyboard_check(vk_down))
	{
		vspeed = 0
	}
	else if(keyboard_check(vk_up))
	{
		moving_up = true
		moving_down = false
		vspeed = -move_speed
	}
	else if(keyboard_check(vk_down))
	{
		moving_up = false
		moving_down = true
		vspeed = move_speed
	}
	else
	{
		vspeed = 0
	}

	//Set animations 
	if(moving_right && speed > 0)
	{
		image_speed = 1
		if(sprite_index != anim_walk_right)
		{
			image_index = 0
			sprite_index = anim_walk_right
		}
	}
	else if(moving_left && speed > 0)
	{
		image_speed = 1
		
		if(sprite_index != anim_walk_left)
		{
			image_index = 0
			sprite_index = anim_walk_left
		}
	}
	else
	{
		image_speed = 0
	}	
}


//Normalize diagonal movement speed
if (hspeed != 0 && vspeed != 0) 
{
    hspeed *= 0.707;
    vspeed *= 0.707;
}

//Vertically/Horizontally wrap player character and enemies when approaching world border
scr_instance_wrap()



//(DEPRECATED) Play animations on movement
//if(moving_right && moving_up)
//{
//	image_speed = 1
//	if(sprite_index != anim_walk_up_right)
//	{
//		image_index = 0
//		sprite_index = anim_walk_up_right
//	}
//}
//else if(moving_right && moving_down)
//{
//	image_speed = 1
		
//	if(sprite_index != anim_walk_down_right)
//	{
//		image_index = 0
//		sprite_index = anim_walk_down_right
//	}
//}
//else if(moving_left && moving_up)
//{
//	image_speed = 1
//	if(sprite_index != anim_walk_up_left)
//	{
//		image_index = 0
//		sprite_index = anim_walk_up_left
//	}
//}
//else if(moving_left && moving_down)
//{
//	image_speed = 1
//	if(sprite_index != anim_walk_down_left)
//	{
//		image_index = 0
//		sprite_index = anim_walk_down_left
//	}
//}
//else if(moving_right)
//{
//	image_speed = 1
//	if(sprite_index != anim_walk_right)
//	{
//		image_index = 0
//		sprite_index = anim_walk_right
//	}
//}
//else if(moving_left)
//{
//	image_speed = 1
//	if(sprite_index != anim_walk_left)
//	{
//		image_index = 0
//		sprite_index = anim_walk_left
//	}
//}
//else if(moving_up)
//{
//	image_speed = 1
//	if(sprite_index != anim_walk_up)
//	{
//		image_index = 0
//		sprite_index = anim_walk_up
//	}
//}
//else if(moving_down)
//{
//	image_speed = 1
//	if(sprite_index != anim_walk_down)
//	{
//		image_index = 0
//		sprite_index = anim_walk_down
//	}
//}
//else if(sprite_index != anim_idle)
//{
//	image_index = 0
//	sprite_index = anim_idle
//}

//(DEPRECATED) Handle horizontal movement
//if(keyboard_check(vk_left) && keyboard_check(vk_right))
//{
//	in_idle = false
//	moving_right = false
//	moving_left = false
//	hspeed = 0
//}
//else if(keyboard_check(vk_right))
//{	
//	in_idle = false
//	moving_right = true
//	hspeed = move_speed	
//}
//else if(keyboard_check(vk_left))
//{
//	in_idle = false
//	moving_left = true
//	hspeed = -move_speed		
//}
//else
//{
//	in_idle = false	
//	moving_right = false
//	moving_left = false
//	hspeed = 0
//}

//(DEPRECATED) Handle vertical movement
//if(keyboard_check(vk_up) && keyboard_check(vk_down))
//{
//	in_idle = false
//	vspeed = 0
//	moving_up = false
//	moving_down = false
//}
//else if(keyboard_check(vk_up))
//{
//	in_idle = false
//	vspeed = -move_speed
//	moving_up = true
//}
//else if(keyboard_check(vk_down))
//{
//	in_idle = false
//	vspeed = move_speed
//	moving_down = true
//}
//else
//{
//	in_idle = true
//	vspeed = 0
//	moving_up = false
//	moving_down = false
//}