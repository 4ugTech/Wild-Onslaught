global.current_btn_number++

// down key from last button "loops" up to first button
if (global.current_btn_number > global.last_btn_number) {
	global.current_btn_number = global.first_btn_number
}

// highlight current button
with (obj_btn_parent) {
	if (btn_number != global.current_btn_number) {
		image_alpha = 0
	} else {
		image_alpha = 1
	}
}

show_debug_message("Current button: " + string(global.current_btn_number));