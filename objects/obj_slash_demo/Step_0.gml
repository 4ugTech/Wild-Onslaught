animation_timer++;

// If animation has finished
if (image_index >= image_number - 1) {
    image_speed = 0;
    image_index = image_number - 1;
    
    // Wait for delay before restarting
    if (animation_timer >= repeat_delay) {
        // Reset animation
        image_index = 0;
        image_speed = 1;
        animation_timer = 0;
    }
}