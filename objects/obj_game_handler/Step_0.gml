
//Restart game after death with "enter"
if(room == EmeraldForest && hp <= 0)
{
	if(keyboard_check_pressed(vk_enter))
	{
		room_restart()	
		minutes = 0
		in_game_frame = 0
		hp = 100
		score = 0
		xp = 0
	}
}
//Start game time stopwatch
if(room == EmeraldForest)
{
	in_game	= true
	if(alarm[0] == -1)
	{
		alarm[0] = 1	
	}
}
else
{
	in_game = false	
}
//Close game with "escape"
if(keyboard_check_pressed(vk_escape))
{
	game_end()
}