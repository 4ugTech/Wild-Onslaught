// highlight button that is being hovered
with (obj_btn_parent) {
    image_alpha = (object_index == other.object_index) ? 1 : 0;
}
audio_play_sound(snd_buttons, 1, 0)