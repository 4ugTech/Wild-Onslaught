draw_set_font(font_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw Game Over text at the top
draw_set_color(c_red)
draw_text(room_width/2, 200, "GAME OVER");
draw_set_color(c_white)
// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);