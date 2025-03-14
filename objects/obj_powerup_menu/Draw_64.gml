// First, draw darkened background
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

// Draw title text
draw_set_font(font_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(display_get_gui_width()/2, 100, "Choose a Power Up!");

// Get number of available powerups
var num_powerups = ds_list_size(available_powerups);

// Calculate total width needed
var total_width = (num_powerups * button_width) + ((num_powerups-1) * button_spacing);
var start_x = (display_get_gui_width() - total_width) / 2;
var button_y = display_get_gui_height() / 2;

// Draw each available powerup button
for(var i = 0; i < num_powerups; i++)
{
    var current_x = start_x + (i * (button_width + button_spacing));
    
    // Draw button background
    draw_set_color(c_gray);
    draw_rectangle(current_x, button_y - button_height/2, 
                  current_x + button_width, button_y + button_height/2, false);
    
    // Draw button border
    draw_set_color(c_white);
    draw_rectangle(current_x, button_y - button_height/2, 
                  current_x + button_width, button_y + button_height/2, true);
    
    // Get current powerup type
    var powerup_type = ds_list_find_value(available_powerups, i);
    
    // Draw the powerup name in a larger font
    draw_set_font(font_menu);
    draw_set_color(c_white);
    draw_text(current_x + button_width/2, button_y - 20, string_upper(powerup_type));
    
    // Add a short description based on powerup type
    var description = "";
    switch(powerup_type)
    {
        case "health":
            description = "Recover 50 HP";
            break;
        case "magic":
            description = "Magic Bolt Attack";
            break;
        case "shield":
            description = "Protective Shield";
            break;
        case "shuriken":
            description = "Rotating Shurikens";
            break;
    }
    
    // Draw description in a smaller font
    draw_set_font(font_score); // Use a smaller font
    
    // Make the text smaller if font_score is still too large
    var text_scale = 0.7;
    var desc_width = string_width(description) * text_scale;
    
    // If description is too wide, make it even smaller
    if (desc_width > button_width - 10) {
        text_scale = (button_width - 10) / string_width(description);
    }
    
    // Calculate position to center the description
    var desc_x = current_x + button_width/2;
    var desc_y = button_y + 20;
    
    // Draw the description text with scaling
    draw_text_transformed(desc_x, desc_y, description, text_scale, text_scale, 0);
}

// Reset text alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);