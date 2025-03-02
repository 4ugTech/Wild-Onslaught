global.current_button--

// up key from first button "loops" down to last button
if (global.current_button < global.first_button_number) {
	global.current_button = global.last_button_number
}

// highlight current button
with (obj_btn_parent) {
	if (btn_number != global.current_button) {
		image_alpha = 0
	} else {
		image_alpha = 1
	}
}

show_debug_message("Current button: " + string(global.current_button));