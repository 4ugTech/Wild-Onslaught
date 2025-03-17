if(obj_game_handler.game_paused == true)
{
	scr_pause_object()
}
else
{
	//Respawn shield
	if(!has_shield && alarm[3] == -1)
	{
		alarm[3] = 180	
	}
	
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
	
	if(alarm[4] == -1)
	{
		alarm[4] = magic_bolt_cooldown	
	}
	
	scr_push_away(obj_plant1);
	scr_push_away(obj_player1);
}


