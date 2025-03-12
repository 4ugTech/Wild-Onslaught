// Restart game after death with "enter"
if(room == EmeraldForest && hp <= 0)
{
	with(obj_magic_bolt) {
        instance_destroy();
    }
    with(obj_plant2_projectile) {
        instance_destroy();
    }
	

   
    room_goto(rm_death_screen);
}

//Start game time stopwatch
if(room == EmeraldForest)
{
    in_game = true;
    if(alarm[0] == -1)
    {
        alarm[0] = 1;    
    }
}
else
{
    in_game = false;    
}

//Close game with "escape"
if(keyboard_check_pressed(vk_escape))
{
    game_end();
}

//Restores the players shield after cooldown if unlocked
if(has_shield == true && instance_exists(obj_shield))
{
	alarm[1] = shield_cooldown	               
}