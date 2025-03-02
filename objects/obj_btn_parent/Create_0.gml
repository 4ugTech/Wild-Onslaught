global.first_btn_number = 1
global.current_btn_number = 1 // play button at start
global.last_btn_number = 3

/*
enum MainMenuButton {
	Play,
	Settings,
	Quit,
}
*/

// highlight play button at the start
with (obj_btn_parent) {
	if (object_index == obj_btn_play) {
		image_alpha = 1
		
		global.current_btn_number = obj_btn_play.btn_number
	} else {
		image_alpha = 0
	}
}

show_debug_message("Current button: " + string(global.current_btn_number));


//obj_btn_play.image_alpha = 1