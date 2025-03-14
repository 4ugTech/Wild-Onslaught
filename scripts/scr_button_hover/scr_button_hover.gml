function scr_button_hover(current_x)
{
	if(device_mouse_x_to_gui(0) >= current_x 
		&& device_mouse_x_to_gui(0) <= current_x + button_width 
		&& device_mouse_y_to_gui(0) >= button_y - button_height/2
		&& device_mouse_y_to_gui(0) <= button_y + button_height/2)
	{
		return true
	}
	else
	{
		return false	
	}
}