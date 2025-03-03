if(instance_exists(obj_player1))
{
	//Follow player if player enters follow_distance, and keep following the player until player leaves max_follow_distance
	if(distance_to_object(obj_player1) < follow_distance && tracking == false)
	{
		tracking = true
		scr_follow_instance(obj_player1)
	}	
	else if(distance_to_object(obj_player1) < max_follow_distance && tracking == true)
	{
		scr_follow_instance(obj_player1)
	}
	else
	{
		tracking = false
		speed = 0	
	}
}

