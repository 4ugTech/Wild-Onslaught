function scr_animate_movement()
{
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
}