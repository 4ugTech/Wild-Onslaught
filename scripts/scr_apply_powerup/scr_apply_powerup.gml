//// Create a script called scr_apply_powerup if you haven't already
//function apply_powerup(powerup_type)
//{
//    // Apply the appropriate powerup
//    switch(powerup_type)
//    {
//        case "health":
//            // Increase health
//            obj_game_handler.hp += 50;
//            if(obj_game_handler.hp > 100)
//                obj_game_handler.hp = 100;
            
//            // Debug message
//            show_debug_message("Applied health powerup. New HP: " + string(obj_game_handler.hp));
//            break;
            
//        case "magic":
//            // Enable magic bolt attack
//            if(instance_exists(obj_player1))
//            {
//                // Set a flag to enable magic bolt creation in the player's attack cycle
//                obj_game_handler.magic_bolt_level >= 1;
                
//                // Debug message
//                show_debug_message("Applied magic bolt powerup");
//            }
//            break;
            
//        case "shield":
//            // Add shield
//            if(instance_exists(obj_player1))
//            {
//                instance_create_depth(obj_player1.x, obj_player1.y, 50, obj_player1.anim_shield);
//                obj_game_handler.obj_game_handler.shield_level >= 1 = true;
                
//                // Debug message
//                show_debug_message("Applied shield powerup");
//            }
//            break;
            
//        case "shuriken":
//            // Add orbiting shurikens
//            if(instance_exists(obj_player1))
//            {
//                instance_create_depth(obj_player1.x, obj_player1.y, 50, obj_player1.anim_shuriken1);
//                instance_create_depth(obj_player1.x, obj_player1.y, 50, obj_player1.anim_shuriken2);
//                instance_create_depth(obj_player1.x, obj_player1.y, 50, obj_player1.anim_shuriken3);
//                instance_create_depth(obj_player1.x, obj_player1.y, 50, obj_player1.anim_shuriken4);
                
//                obj_game_handler.has_shurikens = true;
                
//                // Debug message
//                show_debug_message("Applied shuriken powerup");
//            }
//            break;
//    }
//}