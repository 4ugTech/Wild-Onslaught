draw_set_font(font_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw Game Over text at the top
draw_set_color(c_red)
draw_text(room_width/2, 200, "GAME OVER");
draw_set_color(c_white)

// Draw story continuation
draw_set_font(font_score);
var text_y = 250;
var line_height = 30;

draw_text(room_width/2, text_y, "The corruption proved too strong for Lucian Hale.");
draw_text(room_width/2, text_y + line_height, "Overwhelmed by the plant creatures, she was forced to retreat.");
draw_text(room_width/2, text_y + line_height*3, "The Emerald Plains remain shrouded in darkness,");
draw_text(room_width/2, text_y + line_height*4, "waiting for a hero brave enough to try again...");

// Statistics header
draw_set_font(font_menu);
draw_set_color(c_lime);
draw_text(room_width/2, text_y + line_height*7, "BATTLE STATISTICS");

// Statistics
draw_set_font(font_score);
draw_set_color(c_white);
draw_text(room_width/2, text_y + line_height*8.5, "Total Enemies Defeated: " + string(obj_game_handler.total_kills));
draw_text(room_width/2, text_y + line_height*9.5, "Melee Plant Kills: " + string(obj_game_handler.obj_plant1_kills));
draw_text(room_width/2, text_y + line_height*10.5, "Ranged Plant Kills: " + string(obj_game_handler.obj_plant2_kills));


// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);