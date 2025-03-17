function scr_instance_wrap()
{
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
		with(obj_plant2_projectile)
		{
			x += offset_x	
		}
		with(obj_magic_bolt)
		{
			x += offset_x	
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
}