draw_set_font(font_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_yellow);
draw_text_transformed(room_width/2, 150, "CONGRATULATIONS!", 1.5, 1.5, 0);

// Draw subtitle
draw_set_font(font_title_1);
draw_set_color(c_white);
draw_text(room_width/2, 230, "You Have Saved The Emerald Plains!");

// Draw story conclusion
draw_set_font(font_score);
var text_y = 300;
var line_height = 30;

draw_text(room_width/2, text_y, "With the defeat of the Corruption Boss, the dark energies");
draw_text(room_width/2, text_y + line_height, "begin to dissipate from the Emerald Plains.");


draw_text(room_width/2, text_y + line_height*3, "The village of Vinland is safe once more,");
draw_text(room_width/2, text_y + line_height*4, "thanks to your bravery and skill!");

// Statistics header
draw_set_font(font_menu);
draw_set_color(c_lime);
draw_text(room_width/2, text_y + line_height*6, "BATTLE STATISTICS");

// Statistics
draw_set_font(font_score);
draw_set_color(c_white);
draw_text(room_width/2, text_y + line_height*7.5, "Total Enemies Defeated: " + string(obj_game_handler.total_kills));
draw_text(room_width/2, text_y + line_height*8.5, "Melee Plant Kills: " + string(obj_game_handler.obj_plant1_kills));
draw_text(room_width/2, text_y + line_height*9.5, "Ranged Plant Kills: " + string(obj_game_handler.obj_plant2_kills));

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);