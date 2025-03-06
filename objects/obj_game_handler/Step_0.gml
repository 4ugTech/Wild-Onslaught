// Restart game after death with "enter"
if(room == EmeraldForest && hp <= 0)
{
    // Go to death screen if not already there
    if(room != rm_death_screen) {
        room_goto(rm_death_screen);
    }
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