if(room == EmeraldForest)
{
	
	//Draw healthbar
	draw_healthbar(25, 25, 400, 50, hp, c_black, c_red, c_lime, 0, true, true)
	
	//Draw exp bar
	draw_healthbar(25, 60, 350, 70, xp, c_black, c_blue, c_teal, 0, true, true)
	
	//Draw timer
	seconds = floor(in_game_frame / 60)

	if(seconds < 10)
	{
		draw_text(1150, 25, string(minutes) + " : " + "0" + string(seconds))
	}
	else
	{
		draw_text(1150, 25, string(minutes) + " : " + string(seconds))	
	}
	
	if(seconds >= 60)
	{
		minutes++	
		in_game_frame = 0
	}
}



