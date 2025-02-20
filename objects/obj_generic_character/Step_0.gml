//Handle horizontal movement
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

//Handle vertical movement
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

//Normalize diagonal movement speed
if (hspeed != 0 && vspeed != 0) 
{
    hspeed *= 0.707;
    vspeed *= 0.707;
}

//Play animations on movement
if(moving_right && moving_up)
{
	image_speed = 1
	if(image_index < walk_up_right_frame_start || image_index > walk_up_right_frame_start + total_frames)
	{
		image_index = walk_up_right_frame_start
	}
}
else if(moving_right && moving_down)
{
	image_speed = 1
	if(image_index < walk_down_right_frame_start|| image_index > walk_down_right_frame_start + total_frames)
	{
		image_index = walk_down_right_frame_start
	}	
}
else if(moving_left && moving_up)
{
	image_speed = 1
	if(image_index < walk_up_left_frame_start || image_index > walk_up_left_frame_start + total_frames)
	{
		image_index = walk_up_left_frame_start
	}	
}
else if(moving_left && moving_down)
{
	image_speed = 1
	if(image_index < walk_down_left_frame_start || image_index > walk_down_left_frame_start + total_frames)
	{
		image_index = walk_down_left_frame_start
	}	
}
else if(moving_right)
{
	image_speed = 1
	if(image_index < walk_right_frame_start || image_index > walk_right_frame_start + total_frames)
	{
		image_index = walk_right_frame_start
	}
}
else if(moving_left)
{
	image_speed = 1
	if(image_index < walk_left_frame_start || image_index > walk_left_frame_start + total_frames)
	{
		image_index = walk_left_frame_start
	}
}
else if(moving_up)
{
	image_speed = 1
	if(image_index < walk_up_frame_start || image_index > walk_up_frame_start + total_frames)
	{
		image_index = walk_up_frame_start
	}
}
else if(moving_down)
{
	image_speed = 1
	if(image_index > walk_down_frame_start + total_frames)
	{
		image_index = walk_down_frame_start
	}
}
else
{
	if(alarm[0] == -1)
    {
        alarm[0] = 20;
    }
	image_index = idle_frame_start
	image_speed = 0	
}

//Horizontal wrap player character and enemies when approaching world border
if (x > room_width - 320) 
{
    var offset_x = 320 - x
    x = 320;
    
    with (obj_plant1) 
	{
        x += offset_x;
    }
} 
else if (x < 320)
{
    var offset_x = (room_width - 320) - x
    x = room_width - 320;
    
    with (obj_plant1) 
	{
        x += offset_x;
    }
}

//Vertical wrap player character and enemies when approaching world border
if (y > room_height - 176) 
{
    var offset_y = 176 - y;  
    y = 176;
    
    with (obj_plant1) 
	{
        y += offset_y;
    }
} 
else if (y < 176) 
{
    var offset_y = (room_height - 176) - y
    y = room_height - 176;
    
    with (obj_plant1) 
	{
        y += offset_y;
    }
}



