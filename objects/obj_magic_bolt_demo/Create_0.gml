// Inherit the parent event
event_inherited();

// Define movement boundaries
start_x = 410;
end_x = 940;
x = start_x;
y = 265;

// Set initial movement
direction = 0;
speed = bolt_speed;

// Disable alarm that would destroy the object
alarm[0] = -1;