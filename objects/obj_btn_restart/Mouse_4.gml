// Go back to the game room
room_goto(EmeraldForest);

// Reset all necessary game values
with (obj_game_handler) {
    minutes = 0;
    in_game_frame = 0;
    hp = 100;
    score = 0;
    xp = 0;
    seconds = 0;
	plant1_kills = 0;
    plant2_kills = 0;
    total_kills = 0;
}