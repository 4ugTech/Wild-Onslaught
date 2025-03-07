draw_set_font(font_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Title
draw_set_color(c_yellow);
draw_text(room_width/2, 50, "HOW TO PLAY");
draw_set_color(c_white);

// Page 1 content
if (room == page1_room) {
    // Game goal section
    draw_text(room_width/2, 110, "GAME GOAL");
    draw_set_font(font_score);
    draw_text(room_width/2, 145, "Survive as long as possible against waves of enemy plants!");
    
    // Controls section
    draw_set_font(font_menu);
    draw_text(room_width/2, 190, "CONTROLS");
    draw_set_font(font_score);
    draw_text(room_width/2, 225, "Move: Arrow Keys");
    draw_text(room_width/2, 255, "Sword slash will continuously attack at a fixed interval");
	draw_text(room_width/2, 285, "Magic bullet will automatically lock on to nearest enemy");
    
    // Enemies section
    draw_set_font(font_menu);
    draw_text(room_width/2, 340, "ENEMIES");
    draw_set_font(font_score);
    draw_text(room_width/2, 380, "Plant 1: Melee attacker");
    draw_text(room_width/2, 410, "100 HP - Deals 10 damage on contact");
    
    draw_text(room_width/2, 460, "Plant 2: Ranged attacker");
    draw_text(room_width/2, 490, "100 HP - Shoots projectiles for 10 damage");
}
// Page 2 content
else if (room == page2_room) {
    // Player section
    draw_text(room_width/2, 110, "PLAYER ATTACKS");
    draw_set_font(font_score);
    draw_text(room_width/2, 155, "Sword slash: 50 damage");
    draw_text(room_width/2, 215, "Magic bullet: 10 damage");
    
    // Experience section
    draw_set_font(font_menu);
    draw_text(room_width/2, 275, "EXPERIENCE");
    draw_set_font(font_score);
    draw_text(room_width/2, 310, "Kill enemies to gain XP orbs");
    draw_text(room_width/2, 340, "Fill the XP bar to gain powerups");
    
    // Tips section
    draw_set_font(font_menu);
    draw_text(room_width/2, 400, "TIPS");
    draw_set_font(font_score);
    draw_text(room_width/2, 435, "Use the environment to your advantage");
    draw_text(room_width/2, 465, "Try not to get surrounded by enemies");
    draw_text(room_width/2, 495, "Prioritize melee attackers first to gain XP");
}

// Reset text alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);