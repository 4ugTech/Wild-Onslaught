speed = bolt_speed 
alarm[0] = 300

part_effects = part_system_create(part_magic_bolt)


if(instance_exists(obj_plant1))
{
	direction = point_direction(x, y, instance_nearest(x, y, obj_plant1).x,instance_nearest(x, y, obj_plant1).y)
	part_system_angle(part_effects, direction)
}
else if(instance_exists(obj_player1))
{
	direction = obj_player1.direction
	part_system_angle(part_effects, direction)
}
