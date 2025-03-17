temp_alarm = 0
alarm_paused = false
alarm[0] = 600

if(instance_exists(obj_player1))
{
	direction = point_direction(x, y, obj_player1.x, obj_player1.y)
	speed = move_speed
}
