draw_self()

draw_set_font(font_menu)

// center align text around x and y 
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

// x and y will be wherever you place an instance in the room

draw_set_color(c_white)
draw_text(x, y, text)

// done drawing, reset alignment to default
draw_set_halign(fa_left)
draw_set_valign(fa_top)
