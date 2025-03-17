other.hp -= damage
other.image_blend = make_colour_rgb(255, 0, 255)
other.alarm[0] = 20
if(other.hp <= 0)
{
	instance_destroy(other)	
}
instance_destroy()