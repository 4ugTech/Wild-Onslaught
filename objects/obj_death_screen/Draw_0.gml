draw_set_font(font_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw Game Over text at the top
draw_set_color(c_red)
draw_text(room_width/2, 200, "GAME OVER");
draw_set_color(c_white)

// Draw statistics
draw_set_font(font_score);

// Total kills
draw_text(1100, 230, "Total Enemies Killed: " + string(obj_game_handler.total_kills));

// Enemy type breakdown
draw_text(1100, 280, "Plant Type 1: " + string(obj_game_handler.plant1_kills));
draw_text(1100, 330, "Plant Type 2: " + string(obj_game_handler.plant2_kills));

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);