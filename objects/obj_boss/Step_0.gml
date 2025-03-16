// Inherit the parent event
event_inherited();

if(!has_shield && alarm[3] == -1)
{
	alarm[3] = 180	
}

//if(floor(image_index) == 0 
//	&& (sprite_index == anim_attack_down 
//	|| sprite_index == anim_attack_left 
//	|| sprite_index == anim_attack_right 
//	|| sprite_index == anim_attack_up)
//	&& (instance_place(x, y, obj_shield)
//	|| instance_place(x, y, obj_player1))) 
//{ 
//	// Start alarm when animation starts
//    alarm[0] = round((3 / 8) * 60); 
//}
