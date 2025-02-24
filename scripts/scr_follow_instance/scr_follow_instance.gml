function scr_follow_instance(instance)
{
	if(instance_exists(instance))
	{
		direction = point_direction(x, y, instance.x, instance.y)
		speed = move_speed
	}
	else
	{
		speed = 0
	}
}