if(floor(image_index) == 0 && (sprite_index == anim_attack_down || sprite_index == anim_attack_left || sprite_index == anim_attack_right || sprite_index == anim_attack_up)) 
{ 
	// Start alarm when animation starts
    alarm[0] = round((4 / 7) * 60); 
}