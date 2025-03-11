if(instance_exists(obj_player1))
{
	//Follow player position and orientation
	x = obj_player1.x
	y = obj_player1.y
	if(obj_player1.moving_right)
	{
		image_xscale = 1
	}
	else
	{
		image_xscale = -1	
	}	
	//Start damage timer
	if(alarm[0] == -1)
	{
		//Deal damage to all enemies that collide 
		with(obj_plant1)
		{
			if(place_meeting(x, y, other))
			{
				image_blend = make_colour_rgb(255, 68, 0)
				alarm[1] = 20
				hp -= obj_player1.damage
				if(hp <= 0)
				{
					instance_destroy()
				}
			}
		}
		alarm[0] = obj_player1.attack_cooldown
	}
}





