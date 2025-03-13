if(obj_game_handler.game_paused == true){}
else{
	if(instance_exists(obj_player1))
	{
		if(!instance_exists(anim_attack1) && attack_num == 0)
		{
			instance_create_depth(obj_player1.x, obj_player1.y, 75, anim_attack1)
			//instance_create_depth(obj_player1.x, obj_player1.y, 75, anim_magic_bolt) 
			alarm[0] = attack_cooldown
			attack_num = 1
		}
		else if(!instance_exists(anim_attack2) && attack_num == 1)
		{
			//instance_create_depth(obj_player1.x, obj_player1.y, 75, anim_attack2)
			alarm[0] = attack_cooldown
			attack_num = 0
		}
		else
		{
			alarm[0] = 1	
		}
	}
} 
