obj_game_handler.hp -= damage
other.image_blend = make_colour_rgb(255, 68, 0)
other.alarm[2] = 20
if(obj_game_handler.hp <= 0)
{
	instance_destroy(other)	
}
instance_destroy()