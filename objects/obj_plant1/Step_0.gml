//follow the player
if(instance_exists(obj_player1))
{
	direction = point_direction(x, y, obj_player1.x, obj_player1.y)
	speed = move_speed
}
else
{
	speed = 0
}

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
 with (obj_plant1)
{
	var collision_radius = 10
    // Skip checking with myself
    if (id != other.id) 
	{
        var dx = x - other.x;
        var dy = y - other.y;
        var dist = sqrt(dx*dx + dy*dy);

        // If they overlap, push them apart
        if (dist > 0 && dist < 2 * collision_radius) 
		{
            // Calculate how far they're overlapping
            var overlap = (2 * collision_radius) - dist;
            
            // Direction from 'other' to 'this enemy'
            var push_dir = point_direction(other.x, other.y, x, y);
            
            // Push them both away half the overlap
            x += lengthdir_x(overlap / 2, push_dir);
            y += lengthdir_y(overlap / 2, push_dir);
            
            other.x -= lengthdir_x(overlap / 2, push_dir);
            other.y -= lengthdir_y(overlap / 2, push_dir);
        }
    }
}

with (obj_player1)
{
	var collision_radius = 10
    // Skip checking with myself
    if (id != other.id) 
	{
        var dx = x - other.x;
        var dy = y - other.y;
        var dist = sqrt(dx*dx + dy*dy);

        // If they overlap, push them apart
        if (dist > 0 && dist < 2 * collision_radius) 
		{
            // Calculate how far they're overlapping
            var overlap = (2 * collision_radius) - dist;
            
            // Direction from 'other' to 'this enemy'
            var push_dir = point_direction(other.x, other.y, x, y);
            
            // Push them both away half the overlap
            x += lengthdir_x(overlap / 2, push_dir);
            y += lengthdir_y(overlap / 2, push_dir);
            
            other.x -= lengthdir_x(overlap / 2, push_dir);
            other.y -= lengthdir_y(overlap / 2, push_dir);
        }
    }
}




