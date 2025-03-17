if(obj_game_handler.game_paused == true)
{
	scr_pause_object()
}
else
{
	image_speed = 1
	// Decide if we're already attacking
	var already_attacking = (sprite_index == anim_attack_up)
	                     || (sprite_index == anim_attack_down)
	                     || (sprite_index == anim_attack_left)
	                     || (sprite_index == anim_attack_right);
	
	if(instance_exists(obj_player1))
	{
		// First, follow the player
		if(!already_attacking)
		{
			scr_follow_instance(obj_player1)
		}

		//If player is above 
		if (direction > 45 && direction < 135)
		{
			if(!already_attacking && point_distance(x, y, obj_player1.x, obj_player1.y) > attack_radius)
			{
				//Reset image index to 0 if switching from another sprite
				if(sprite_index != anim_walk_up)
				{
					image_index = 0	
					sprite_index = anim_walk_up
				}
			}
			else if(!already_attacking && point_distance(x, y, obj_player1.x, obj_player1.y) <= attack_radius)
			{	
				image_index = 0
				sprite_index = anim_attack_up	
			}
			else if(already_attacking && image_index >= image_number - 1)
			{
				sprite_index = anim_walk_up	
			}
		}
		//If player is to the left 
		else if (direction > 135 && direction < 225)
		{
			if(!already_attacking && point_distance(x, y, obj_player1.x, obj_player1.y) > attack_radius)
			{
				//Reset image index to 0 if switching from another sprite
				if(sprite_index != anim_walk_left)
				{
					image_index = 0	
					sprite_index = anim_walk_left
				}
			}
			else if(!already_attacking && point_distance(x, y, obj_player1.x, obj_player1.y) <= attack_radius)
			{	
				image_index = 0
				sprite_index = anim_attack_left	
			}
			else if(already_attacking && image_index >= image_number - 1)
			{
				sprite_index = anim_walk_left	
			}
		}
		//If player is below
		else if (direction > 225 && direction < 315)
		{
			if(!already_attacking && point_distance(x, y, obj_player1.x, obj_player1.y) > attack_radius)
			{
				//Reset image index to 0 if switching from another sprite
				if(sprite_index != anim_walk_down)
				{
					image_index = 0	
					sprite_index = anim_walk_down
				}
			}
			else if(!already_attacking && point_distance(x, y, obj_player1.x, obj_player1.y) <= attack_radius)
			{	
				image_index = 0
				sprite_index = anim_attack_down	
			}
			else if(already_attacking && image_index >= image_number - 1)
			{
				sprite_index = anim_walk_down	
			}
		}
		//If player is to the right
		else
		{
			if(!already_attacking && point_distance(x, y, obj_player1.x, obj_player1.y) > attack_radius)
			{
				//Reset image index to 0 if switching from another sprite
				if(sprite_index != anim_walk_right)
				{
					image_index = 0	
					sprite_index = anim_walk_right
				}
			}
			else if(!already_attacking && point_distance(x, y, obj_player1.x, obj_player1.y) <= attack_radius)
			{	
				image_index = 0
				sprite_index = anim_attack_right
			}
			else if(already_attacking && image_index >= image_number - 1)
			{
				sprite_index = anim_walk_right	
			}
		}
	}
	
	scr_push_away(obj_plant1);
	scr_push_away(obj_player1);
}
if(instance_exists(obj_player1))
{
	if(point_distance(x, y, obj_player1.x, obj_player1.y) > 960 && !recycled)
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
		instance_create_layer(spawn_x, spawn_y, "Instances", this);
		instance_destroy()
		show_debug_message("enemy recycled")
	}
}


