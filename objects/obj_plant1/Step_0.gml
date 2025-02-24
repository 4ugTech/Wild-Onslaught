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
	else
	{
		sprite_index = anim_walk_up
		image_speed = 1
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
		var in_attack_anim = true
	}
	else
	{
		sprite_index = anim_walk_left
		image_speed = 1
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
	else
	{
		sprite_index = anim_walk_down
		image_speed = 1
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
	else
	{
		sprite_index = anim_walk_right
		image_speed = 1
	}
}

//Keep enemies from overlapping by pushing away from each other
scr_push_away()




