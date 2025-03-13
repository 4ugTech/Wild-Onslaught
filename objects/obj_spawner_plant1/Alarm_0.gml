if(instance_exists(obj_player1))
{
	// Choose a random edge (0 = top, 1 = bottom, 2 = left, 3 = right)
	var x1 = obj_player1.x - 352
	var y1 = obj_player1.y - 208
	var x2 = obj_player1.x + 352 
	var y2 = obj_player1.y + 208

	var edge = irandom(3);
	var spawn_x, spawn_y;

	if (edge == 0) 
	{
	    // Top edge
	    spawn_x = random_range(x1, x2);
	    spawn_y = y1;
	} 
	else if (edge == 1) 
	{
	    // Bottom edge
	    spawn_x = random_range(x1, x2);
	    spawn_y = y2;
	} 
	else if (edge == 2) 
	{
	    // Left edge
	    spawn_x = x1;
	    spawn_y = random_range(y1, y2);
	} 
	else 
	{
	    // Right edge
	    spawn_x = x2;
	    spawn_y = random_range(y1, y2);
	}

	if(instance_number(obj_plant1) < max_instances)
	{
		instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy);
	}

	alarm[0] = 60
	show_debug_message("enemy spawned")
}

