draw_set_font(font_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw Game Over text at the top
draw_text(room_width/2, 200, "GAME OVER");

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);