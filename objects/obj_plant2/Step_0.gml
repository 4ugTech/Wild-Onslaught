//Inherit events from obj_plant1
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





