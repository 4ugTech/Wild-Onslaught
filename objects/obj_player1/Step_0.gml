//Handle horizontal movement
scr_move_horizontal()

//Handle vertical movement
scr_move_vertical()

//Normalize diagonal movement speed
if (hspeed != 0 && vspeed != 0) 
{
    hspeed *= 0.707;
    vspeed *= 0.707;
}

//Play animations on movement
scr_animate_movement()

//Vertically/Horizontally wrap player character and enemies when approaching world border
scr_instance_wrap()





