other.hp -= damage
other.image_blend = make_colour_rgb(255, 68, 0)
other.alarm[1] = 20
if(other.hp <= 0)
{
	instance_destroy(other)	
}
instance_destroy()