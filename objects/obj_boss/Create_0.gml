image_xscale = 1.5	
image_yscale = 1.5

image_speed = 1
vspeed = 0
hspeed = 0

//Movement bools
moving_up = false
moving_down = false
moving_left = false
moving_right = false

temp_alarm2 = 0
alarm2_paused = false

recycled = false

instance_create_depth(x, y, -1, anim_shield)
instance_create_depth(x, y, 50, anim_shuriken1)
instance_create_depth(x, y, 50, anim_shuriken2)
instance_create_depth(x, y, 50, anim_shuriken3)
instance_create_depth(x, y, 50, anim_shuriken4)