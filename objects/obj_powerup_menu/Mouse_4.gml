//if(!selection_made)
//{
//    // Get number of available powerups
//    var num_powerups = ds_list_size(available_powerups);
    
//    // Calculate total width needed
//    var total_width = (num_powerups * button_width) + ((num_powerups-1) * button_spacing);
//    var start_x = (display_get_gui_width() - total_width) / 2;
//    var button_y = display_get_gui_height() / 2;
    
//    // Convert actual mouse position to GUI coordinates
//    var gui_mouse_x = device_mouse_x_to_gui(0);
//    var gui_mouse_y = device_mouse_y_to_gui(0);
    
//    show_debug_message("Mouse clicked at GUI coordinates: " + string(gui_mouse_x) + ", " + string(gui_mouse_y));
    
//    // Check each powerup button to see if it was clicked
//    for(var i = 0; i < num_powerups; i++)
//    {
//        var current_x = start_x + (i * (button_width + button_spacing));
        
//        show_debug_message("Button " + string(i) + " bounds: " + 
//            string(current_x) + "," + string(button_y - button_height/2) + " to " + 
//            string(current_x + button_width) + "," + string(button_y + button_height/2));
        
//        // Check if mouse is within this button
//        if(gui_mouse_x >= current_x && gui_mouse_x <= current_x + button_width &&
//           gui_mouse_y >= button_y - button_height/2 && gui_mouse_y <= button_y + button_height/2)
//        {
//            var selected_powerup = ds_list_find_value(available_powerups, i);
//            show_debug_message("Selected powerup: " + selected_powerup);
            
//            // Apply the powerup to the player
//            apply_powerup(selected_powerup);
            
//            // Remove this powerup from the available list
//            ds_list_delete(available_powerups, i);
            
//            // Mark that a selection has been made
//            selection_made = true;
            
//            // Reset XP
//            obj_game_handler.xp = 0;
            
//            // Resume game
//            obj_game_handler.powerup_menu = false;
            
//            // Destroy this menu
//            instance_destroy();
            
//            break;
//        }
//    }
//}