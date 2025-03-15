if(obj_game_handler.game_paused == true)
{
	scr_pause_object()
}
else
{
	image_speed = 1
	//follow the player
	scr_follow_instance(obj_player1)

	//Play animations depending on direction
	if(!(instance_exists(obj_player1)))
	{
		sprite_index = anim_idle
		image_speed = 1
	}
	else if(point_distance(x, y, obj_player1.x, obj_player1.y) < 2)
	{
		sprite_index = anim_attack_down
		image_speed = 1
	}
	else if(direction > 45 && direction < 135)
	{
		//Play attack animations when near player
		if(point_distance(x, y, obj_player1.x, obj_player1.y) < attack_radius)
		{
			if(sprite_index != anim_attack_up)
			{
				sprite_index = anim_attack_up
				image_index = 0	
			}
			image_speed = 1
		}
		//Don't cancel attack animation until finished
		if(sprite_index == anim_attack_up)
		{
			if(floor(image_index) == 6)
			{
				sprite_index = anim_walk_up
				image_speed = 1	
			}
		}
		else
		{
			sprite_index = anim_walk_up
		}
	}
	else if(direction > 135 && direction < 225)
	{
		if(point_distance(x, y, obj_player1.x, obj_player1.y) < attack_radius)
		{
			if(sprite_index != anim_attack_left)
			{
				sprite_index = anim_attack_left
				image_index = 0	
			}
			image_speed = 1
		}
		if(sprite_index == anim_attack_left)
		{
			if(floor(image_index) == 6)
			{
				sprite_index = anim_walk_left
				image_speed = 1	
			}
		}
		else
		{
			sprite_index = anim_walk_left
		}
	}
	else if(direction > 225 && direction < 315)
	{
		if(point_distance(x, y, obj_player1.x, obj_player1.y) < attack_radius)
		{
			if(sprite_index != anim_attack_down)
			{
				sprite_index = anim_attack_down
				image_index = 0	
			}
			image_speed = 1
		}
		if(sprite_index == anim_attack_down)
		{
			if(floor(image_index) == 6)
			{
				sprite_index = anim_walk_down
				image_speed = 1	
			}
		}
		else
		{
			sprite_index = anim_walk_down
		}
	}
	else
	{
		if(point_distance(x, y, obj_player1.x, obj_player1.y) < attack_radius)
		{
			if(sprite_index != anim_attack_right)
			{
				sprite_index = anim_attack_right
				image_index = 0	
			}
			image_speed = 1
		}
		if(sprite_index == anim_attack_right)
		{
			if(floor(image_index) == 6)
			{
				sprite_index = anim_walk_right
				image_speed = 1	
			}
		}
		else
		{
			sprite_index = anim_walk_right
		}
	}

	//Keep enemies from overlapping by pushing away from each other
	scr_push_away(obj_plant1)

	scr_push_away(obj_player1)

	//Start alarm to shoot projectiles at the start of every animation
	if(floor(image_index) == 0) 
	{ 
		// Start alarm when animation starts
	    alarm[0] = round((4 / 7) * 60); 
	}
}
//Recycle instance if too far from the player
if(instance_exists(obj_player1))
{
	if(point_distance(x, y, obj_player1.x, obj_player1.y) > 960)
	{
		// Choose a random edge (0 = top, 1 = bottom, 2 = left, 3 = right)
		var x1 = obj_player1.x - 352
		var y1 = obj_player1.y - 208
		var x2 = obj_player1.x + 352 
		var y2 = obj_player1.y + 208

		var edge = irandom(3);
		var spawn_x, spawn_y;

		if (edge == 0) 
		{
			// Top edge
			spawn_x = random_range(x1, x2);
			spawn_y = y1;
		} 
		else if (edge == 1) 
		{
			// Bottom edge
			spawn_x = random_range(x1, x2);
			spawn_y = y2;
		} 
		else if (edge == 2) 
		{
			// Left edge
			spawn_x = x1;
			spawn_y = random_range(y1, y2);
		} 
		else 
		{
			// Right edge
			spawn_x = x2;
			spawn_y = random_range(y1, y2);
		}
		recycled = true
		instance_create_layer(spawn_x, spawn_y, "Instances", obj_plant2);
		instance_destroy()
		show_debug_message("enemy recycled")
	}
}
