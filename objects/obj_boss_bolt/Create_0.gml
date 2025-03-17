audio_play_sound(snd_magic_bolt, 1, 0)

speed = bolt_speed 
alarm[0] = 300
temp_alarm = 0
alarm_paused = false

part_effects = part_system_create(part_magic_bolt)


if(instance_exists(obj_player1))
{
	direction = point_direction(x, y, instance_nearest(x, y, obj_player1).x,instance_nearest(x, y, obj_player1).y)
	part_system_angle(part_effects, direction)
}
else if(instance_exists(obj_boss))
{
	direction = obj_boss.direction
	part_system_angle(part_effects, direction)
}
