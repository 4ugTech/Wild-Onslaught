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
draw_text(1100, 370, "Total Enemies Killed: " + string(global.stored_total_kills));

// Enemy type breakdown
draw_text(1128, 420, "Melee Plant Kills: " + string(global.stored_plant1_kills));
draw_text(1118, 470, "Ranged Plant Kills: " + string(global.stored_plant2_kills));

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);