if(room == EmeraldForest)
{
	
	//Draw healthbar
	draw_healthbar(25, 25, 400, 50, hp, c_black, c_red, c_lime, 0, true, true)
	
	//Draw exp bar
	draw_healthbar(25, 60, 350, 70, xp, c_black, c_blue, c_teal, 0, true, true)
	
	//Draw timer
	draw_set_font(font_title_1);
	draw_set_color(c_white)
	seconds = floor(in_game_frame / 60)

	if(seconds < 10)
	{
		draw_text(1200, 15, string(minutes) + " : " + "0" + string(seconds))
	}
	else
	{
		draw_text(1200, 15, string(minutes) + " : " + string(seconds))	
	}
	
	if(seconds >= 60)
	{
		minutes++	
		in_game_frame = 0
	}
	
	if(game_paused)
	{
		
		
		if(!game_powerup_selection)
		{
			draw_set_color(c_black);
			draw_set_alpha(.6)
			draw_rectangle(0, 0, display_get_width(), display_get_height(), false)
			draw_set_alpha(1)
			//Using GUI center coordinates
			var gui_width = display_get_gui_width();
		    var gui_height = display_get_gui_height();
		    var center_x = gui_width / 2;
		    var center_y = gui_height / 2;
   
		    var rect_width = 30;
		    var rect_height = 150;
		    var spacing = 20;
    
		    // Draw the two rectangles (white by default)
		    draw_set_color(c_white);
		    // Left rectangle
		    draw_rectangle(center_x - spacing - rect_width, center_y - rect_height/2, 
		                  center_x - spacing, center_y + rect_height/2, false);
		    // Right rectangle
		    draw_rectangle(center_x + spacing, center_y - rect_height/2, 
		                  center_x + spacing + rect_width, center_y + rect_height/2, false);
		}
		
	}
}



