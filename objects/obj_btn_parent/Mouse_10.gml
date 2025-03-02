// highlight button that is being hovered
with (obj_btn_parent) {
	if (object_index != other.object_index) {
		image_alpha = 0
	} else {
		image_alpha = 1
		
		global.current_button = object_index.btn_number
	}
}

show_debug_message("Current button: " + string(global.current_button));