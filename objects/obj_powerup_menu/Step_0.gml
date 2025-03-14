//Update mouse coordinates
mx = device_mouse_x_to_gui(0)
my = device_mouse_y_to_gui(0)

// Get number of available powerups
num_powerups = ds_list_size(obj_game_handler.available_powerups);

// Calculate total width needed
total_width = (num_powerups * button_width) + ((num_powerups-1) * button_spacing);
start_x = (display_get_gui_width() - total_width) / 2;
button_y = display_get_gui_height() / 2;



//Play button sound once wshen hovering over a button
var prev_hovered_powerup = hovered_button;

hovered_button = -1

for (var i = 0; i < num_powerups; i++)
{
	var current_x = start_x + (i * (button_width + button_spacing));
	
	var mouse_hover = scr_button_hover(current_x)
	
	var powerup_type = ds_list_find_value(obj_game_handler.available_powerups, i);
	
    // Check if mouse is over this button
    if(mouse_hover)
    {
        hovered_button = i; // Store the hovered button index

        // If mouse just entered a new button, play sound ONCE
        if (prev_hovered_powerup != hovered_button) 
        {
            audio_play_sound(snd_buttons, 1, false);
        }
    }
	//
	if(mouse_hover && mouse_check_button_pressed(mb_left) )
	{
		//If player chooses "health" hp is reset to 100
		if(powerup_type == "health")
		{
			obj_game_handler.hp = 100
			scr_exit_powerup_menu()
		}
		else if(powerup_type == "magic" && obj_game_handler.magic_bolt_level < 1)
		{
			obj_game_handler.magic_bolt_level++
			scr_exit_powerup_menu()
			ds_list_delete(obj_game_handler.available_powerups, ds_list_find_index(obj_game_handler.available_powerups, "magic"))
		}
		else if(powerup_type == "shield" && obj_game_handler.shield_level < 1)
		{
			instance_create_depth(obj_player1.x, obj_player1.y, 50, obj_shield)
			obj_game_handler.shield_level++
			scr_exit_powerup_menu()
			ds_list_delete(obj_game_handler.available_powerups, ds_list_find_index(obj_game_handler.available_powerups, "shield"))
		}
		//Shuriken Levels
		else if(powerup_type == "shuriken" && obj_game_handler.shuriken_level < 1)
		{
			instance_create_depth(obj_player1.x, obj_player1.y, 50, obj_shuriken)
			obj_game_handler.shuriken_level++
			scr_exit_powerup_menu()
		}
		else if(powerup_type == "shuriken" && obj_game_handler.shuriken_level == 1)
		{
			instance_create_depth(obj_player1.x, obj_player1.y, 50, obj_shuriken2)
			obj_game_handler.shuriken_level++
			scr_exit_powerup_menu()
		}
		else if(powerup_type == "shuriken" && obj_game_handler.shuriken_level == 2)
		{
			instance_create_depth(obj_player1.x, obj_player1.y, 50, obj_shuriken3)
			obj_game_handler.shuriken_level++
			scr_exit_powerup_menu()
		}
		else if(powerup_type == "shuriken" && obj_game_handler.shuriken_level == 3)
		{
			instance_create_depth(obj_player1.x, obj_player1.y, 50, obj_shuriken4)
			obj_game_handler.shuriken_level++
			scr_exit_powerup_menu()
			ds_list_delete(obj_game_handler.available_powerups, ds_list_find_index(obj_game_handler.available_powerups, "shuriken"))
		}
		
		
		
	}
}