draw_set_font(font_title);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_yellow);
draw_text(room_width/2, 80, "The Tale of Lucian Hale");

draw_set_font(font_score);
draw_set_color(c_white);

var text_x = room_width/2;
var text_y = 160;
var line_height = 32;

draw_text(text_x, text_y, "Lucian Hale, a skilled swordswoman from the peaceful village of Verdant Haven,");
draw_text(text_x, text_y + line_height, "now stands alone at the edge of the Emerald Plains.");
draw_text(text_x, text_y + line_height*3, "Dark forces have corrupted the once tranquil grasslands, transforming");
draw_text(text_x, text_y + line_height*4, "the local flora into monstrous, sentient plants that attack anything in sight.");
draw_text(text_x, text_y + line_height*6, "Armed with only her trusted blade, Lucian must push back this botanical menace.");
draw_text(text_x, text_y + line_height*7, "With each enemy vanquished, she'll collect mystical energy (XP)");
draw_text(text_x, text_y + line_height*8, "that will unlock powerful abilities to aid her fight.");
draw_text(text_x, text_y + line_height*10, "The corruption grows stronger with each passing minute.");
draw_text(text_x, text_y + line_height*11, "How long can you survive against the encroaching darkness?");

// Add boss teaser
draw_set_color(c_red);
draw_text(text_x, text_y + line_height*13, "Beware! Rumors tell of an evil being that emerges after 5 minutes");
draw_text(text_x, text_y + line_height*14, "to protect its corrupted domain...");
draw_set_color(c_white);

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);