
speed = bolt_speed 
alarm[0] = 300
temp_alarm = 0
alarm_paused = false

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

// Define movement boundaries
start_x = 410;
end_x = 940;
x = start_x;
y = 280;

// Set initial movement
direction = 0;
speed = bolt_speed;

// Disable alarm that would destroy the object
alarm[0] = -1;