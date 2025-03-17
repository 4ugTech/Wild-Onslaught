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
	
	//Draw pause symbol
	if(game_paused)
	{
		if(!powerup_menu && !boss_killed)
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
if(room == EmeraldForest && instance_exists(obj_boss))
{
    var boss_health_percent = (obj_boss.hp / 750) * 100; // Boss has 1000 max HP
    var bar_width = 400;
    var bar_height = 25;
    var bar_x = (display_get_gui_width() - bar_width) / 2; // Center horizontally
    var bar_y = 25;
    
    // Draw boss name
    draw_set_font(font_score);
    draw_set_color(c_red);
    draw_set_halign(fa_center);
    draw_text(display_get_gui_width() / 2, bar_y + 27, "CORRUPTED GUARDIAN");
    draw_set_halign(fa_left);
    
    // Draw the background of the health bar
    draw_set_color(c_maroon);
    draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);
    
    // Draw the actual health
    draw_set_color(c_red);
    draw_rectangle(bar_x, bar_y, bar_x + (bar_width * (boss_health_percent / 100)), bar_y + bar_height, false);
    
    // Draw border
    draw_set_color(c_white);
    draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, true);
}


