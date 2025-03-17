window_set_fullscreen(false)

//Game State Bools
fullscreen = false
infinite_health = false
in_game = false
is_running = false
game_paused = false
alarm_paused = false
game_music_playing = false
powerup_menu = false
boss_spawned = false

//Game State Reals
temp_hp = 100
temp_alarm = 0
temp_alarm1 = 0
in_game_frame = 0
minutes = 0
seconds = 0
stopwatch_time = 0
total_kills = 0
hp = 100
xp = 0

//Kill Count Reals
obj_plant1_kills = 0
temp_plant1_kills = 0
obj_plant2_kills = 0
temp_plant2_kills = 0
total_kills = 0
temp_total_kills = 0

//Ability Level Reals
shield_level = 0
magic_bolt_level = 0
shuriken_level = 0


//Cooldown Reals
shield_cooldown = 300
boss_shield_cooldown = 180

//Create powerup list 
available_powerups = ds_list_create();
ds_list_add(available_powerups, "health", "magic", "shield", "shuriken");

score = 0

