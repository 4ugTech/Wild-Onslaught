

// Decide if we're already attacking
var already_attacking = (sprite_index == anim_attack_up)
                     || (sprite_index == anim_attack_down)
                     || (sprite_index == anim_attack_left)
                     || (sprite_index == anim_attack_right);
					 
// First, follow the player
if(!already_attacking)
{
	scr_follow_instance(obj_player1);	
}

// If we are currently playing an attack animation, only switch out once it's finished
if (already_attacking)
{
    // If the animation has reached the final frame where we want to switch back
    if (floor(image_index) == 6)
    {
        // Switch to the correct walk sprite depending on the direction at that moment
        if (direction > 45 && direction < 135)
        {
            sprite_index = anim_walk_up;
        }
        else if (direction > 135 && direction < 225)
        {
            sprite_index = anim_walk_left;
        }
        else if (direction > 225 && direction < 315)
        {
            sprite_index = anim_walk_down;
        }
        else
        {
            sprite_index = anim_walk_right;
        }
        image_speed = 1;
    }
}
else
{
    // Only run your direction-choosing code if not already attacking
    if (!(instance_exists(obj_player1)))
    {
        sprite_index = anim_idle;
        image_speed  = 1;
    }
    else if (point_distance(x, y, obj_player1.x, obj_player1.y) < 2)
    {
        // Very close, use down-attack as a "placeholder" or special case?
        sprite_index = anim_attack_down;
        image_speed  = 1;
    }
    else if (direction > 45 && direction < 135)
    {
        // Check if within attack range
        if (point_distance(x, y, obj_player1.x, obj_player1.y) < attack_radius)
        {
            sprite_index = anim_attack_up;
            image_index  = 0;
            image_speed  = 1;
        }
        else
        {
            sprite_index = anim_walk_up;
            image_speed  = 1;
        }
    }
    else if (direction > 135 && direction < 225)
    {
        if (point_distance(x, y, obj_player1.x, obj_player1.y) < attack_radius)
        {
            sprite_index = anim_attack_left;
            image_index  = 0;
            image_speed  = 1;
        }
        else
        {
            sprite_index = anim_walk_left;
            image_speed  = 1;
        }
    }
    else if (direction > 225 && direction < 315)
    {
        if (point_distance(x, y, obj_player1.x, obj_player1.y) < attack_radius)
        {
            sprite_index = anim_attack_down;
            image_index  = 0;
            image_speed  = 1;
        }
        else
        {
            sprite_index = anim_walk_down;
            image_speed  = 1;
        }
    }
    else
    {
        if (point_distance(x, y, obj_player1.x, obj_player1.y) < attack_radius)
        {
            sprite_index = anim_attack_right;
            image_index  = 0;
            image_speed  = 1;
        }
        else
        {
            sprite_index = anim_walk_right;
            image_speed  = 1;
        }
    }
}

// Keep enemies from overlapping by pushing away from each other
scr_push_away(obj_plant1);
scr_push_away(obj_player1);
