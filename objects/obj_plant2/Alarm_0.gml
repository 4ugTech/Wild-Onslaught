//Shoot projectile if in attack animation
if(sprite_index == anim_attack_down || sprite_index == anim_attack_left || sprite_index == anim_attack_right || sprite_index == anim_attack_up)
{
	instance_create_layer(x, y, "Instances", obj_plant2_projectile)
}