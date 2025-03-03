if(room == EmeraldForest)
{
	
	//Draw healthbar
	draw_healthbar(25, 50, 400, 25, hp, c_black, c_red, c_lime, 0, true, true);

	//Draw score
	draw_set_font(font_score)
	draw_text(50, 75, "Score: " + string(score))

	//Draw timer
	seconds = floor(in_game_frame / 60)

	if(seconds < 10)
	{
		draw_text(1250, 25, string(minutes) + " : " + "0" + string(seconds))
	}
	else
	{
		draw_text(1250, 25, string(minutes) + " : " + string(seconds))	
	}
	
	if(seconds >= 60)
	{
		minutes++	
		in_game_frame = 0
	}
}



