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
    draw_text(room_width/2, 100, "GAME GOAL");
    draw_set_font(font_score);
    draw_text(room_width/2, 135, "Survive as long as possible against waves of enemy plants!");
    draw_text(room_width/2, 165, "After 5 minutes, defeat the Corruption Boss to save the Emerald Plains!");
    
    // Controls section
    draw_set_font(font_menu);
    draw_text(room_width/2, 210, "CONTROLS");
    draw_set_font(font_score);
    draw_text(room_width/2, 245, "Move: Arrow Keys");
    draw_text(room_width/2, 275, "Sword slash will continuously attack at a fixed interval");
    draw_text(room_width/2, 305, "Magic bolt will automatically lock on to nearest enemy");
    draw_text(room_width/2, 335, "Shurikens spin around you at a fixed distance, damaging enemies");
    draw_text(room_width/2, 365, "Press ESC to pause the game");
    
    // Enemies section
    draw_set_font(font_menu);
    draw_text(room_width/2, 415, "ENEMIES");
    draw_set_font(font_score);
    draw_text(room_width/2, 450, "Plant 1: Melee attacker");
    draw_text(room_width/2, 480, "100 HP - Deals 10 damage on contact");
    
    draw_text(room_width/2, 520, "Plant 2: Ranged attacker");
    draw_text(room_width/2, 550, "100 HP - Shoots projectiles for 10 damage");
    
    draw_text(room_width/2, 590, "Boss: Appears after 5 minutes");
    draw_text(room_width/2, 620, "1000 HP - Has shield and multiple attacks");
}
// Page 2 content
else if (room == page2_room) {
    // Player section
    draw_text(room_width/2, 95, "PLAYER ATTACKS AND POWERUPS");
    draw_set_font(font_score);
    draw_text(room_width/2, 133, "Sword slash: 50 damage - Available from start");
    
    draw_text(room_width/2, 180, "Collect XP orbs from defeated enemies to fill your XP bar for these powerups:");
    
    draw_text(room_width/2, 215, "Health: Restores your health to 100");
    draw_text(room_width/2, 245, "Magic bolt: 10 damage - Automatically targets nearest enemy");
    draw_text(room_width/2, 285, "Shield: Absorbs 100 damage - Regenerates after being destroyed");
    draw_text(room_width/2, 315, "Shuriken: 40 damage per hit - Can unlock up to 4 rotating weapons");
    
    // Tips section
    draw_set_font(font_menu);
    draw_text(room_width/2, 355, "TIPS");
    draw_set_font(font_score);
    draw_text(room_width/2, 390, "Use the environment to your advantage");
    draw_text(room_width/2, 420, "Try not to get surrounded by enemies");
    draw_text(room_width/2, 450, "The boss appears at 5:00 - prepare with powerups before then");
    draw_text(room_width/2, 480, "Defeat the boss to save the Emerald Plains!");
    
    // Good Luck message
    draw_set_font(font_menu);
    draw_set_color(c_yellow);
    draw_text(room_width/2, 550, "GOOD LUCK, HERO!");
    draw_set_color(c_white);
}

// Reset text alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);