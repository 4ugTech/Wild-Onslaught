//follow the player
if(instance_exists(obj_player1))
{
	direction = point_direction(x, y, obj_player1.x, obj_player1.y)
	speed = move_speed
}

//Play animations depending on direction
if(!(instance_exists(obj_player1)))
{
	sprite_index = anim_idle
	image_speed = 1
}
else if(point_distance(x, y, obj_player1.x, obj_player1.y) < 2)
{
	sprite_index = anim_idle
	image_speed = 1
}
else if(direction > 45 && direction < 135)
{
	sprite_index = anim_walk_up
	image_speed = 1
}
else if(direction > 135 && direction < 225)
{
	sprite_index = anim_walk_left
	image_speed = 1
}
else if(direction > 225 && direction < 315)
{
	sprite_index = anim_walk_down
	image_speed = 1
}
else
{
	sprite_index = anim_walk_right
	image_speed = 1
}


