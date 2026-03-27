function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_player_parent
	global.__objectDepths[1] = 0; // obj_player
	global.__objectDepths[2] = 0; // obj_player_thrust
	global.__objectDepths[3] = 10; // obj_shot1
	global.__objectDepths[4] = 10; // obj_shot_long
	global.__objectDepths[5] = 0; // obj_shot_parent
	global.__objectDepths[6] = 0; // obj_shield
	global.__objectDepths[7] = 0; // obj_cannon
	global.__objectDepths[8] = 0; // obj_repair_main_bottom
	global.__objectDepths[9] = 0; // obj_repair_main
	global.__objectDepths[10] = 0; // obj_repair_dock
	global.__objectDepths[11] = 0; // obj_drone_1
	global.__objectDepths[12] = -10; // obj_drone_2
	global.__objectDepths[13] = 0; // obj_drone_parent
	global.__objectDepths[14] = 0; // obj_plasma_orb
	global.__objectDepths[15] = 0; // obj_lightning
	global.__objectDepths[16] = 0; // obj_enemy_parent
	global.__objectDepths[17] = 0; // obj_enemy_1
	global.__objectDepths[18] = 0; // obj_enemy_control
	global.__objectDepths[19] = 0; // obj_enemy_shot_parent
	global.__objectDepths[20] = 0; // obj_enemy_basic_shot
	global.__objectDepths[21] = 0; // obj_enemy_shot_long
	global.__objectDepths[22] = -2; // obj_shield_enemy_basic
	global.__objectDepths[23] = 10; // obj_enemy_large_1
	global.__objectDepths[24] = -5; // obj_turret_1
	global.__objectDepths[25] = -10; // obj_explosion_enemy_on_player
	global.__objectDepths[26] = -10; // obj_enemy_explosion_1
	global.__objectDepths[27] = -10; // obj_explosion_on_enemy
	global.__objectDepths[28] = 0; // obj_drone_explosion
	global.__objectDepths[29] = 0; // obj_bg_handler
	global.__objectDepths[30] = 0; // obj_wave_handler
	global.__objectDepths[31] = 0; // obj_score_control
	global.__objectDepths[32] = 0; // obj_opening
	global.__objectDepths[33] = 0; // obj_tutorial
	global.__objectDepths[34] = 0; // obj_game_over
	global.__objectDepths[35] = 0; // obj_armor_bonus
	global.__objectDepths[36] = 0; // obj_shield_bonus
	global.__objectDepths[37] = 0; // obj_power_bonus
	global.__objectDepths[38] = 0; // obj_shot_speed_bonus
	global.__objectDepths[39] = 0; // obj_prize_parent
	global.__objectDepths[40] = 0; // obj_pos_and_neg_parent
	global.__objectDepths[41] = 0; // obj_positives
	global.__objectDepths[42] = 0; // obj_negatives
	global.__objectDepths[43] = -1000; // obj_blank
	global.__objectDepths[44] = -1200; // obj_bubble
	global.__objectDepths[45] = 0; // obj_set_tutorial
	global.__objectDepths[46] = 0; // obj_set_debug
	global.__objectDepths[47] = 0; // obj_debug_ship_selector
	global.__objectDepths[48] = -1000; // obj_arrow_2
	global.__objectDepths[49] = -1000; // obj_arrow
	global.__objectDepths[50] = -100; // obj_start


	global.__objectNames[0] = "obj_player_parent";
	global.__objectNames[1] = "obj_player";
	global.__objectNames[2] = "obj_player_thrust";
	global.__objectNames[3] = "obj_shot1";
	global.__objectNames[4] = "obj_shot_long";
	global.__objectNames[5] = "obj_shot_parent";
	global.__objectNames[6] = "obj_shield";
	global.__objectNames[7] = "obj_cannon";
	global.__objectNames[8] = "obj_repair_main_bottom";
	global.__objectNames[9] = "obj_repair_main";
	global.__objectNames[10] = "obj_repair_dock";
	global.__objectNames[11] = "obj_drone_1";
	global.__objectNames[12] = "obj_drone_2";
	global.__objectNames[13] = "obj_drone_parent";
	global.__objectNames[14] = "obj_plasma_orb";
	global.__objectNames[15] = "obj_lightning";
	global.__objectNames[16] = "obj_enemy_parent";
	global.__objectNames[17] = "obj_enemy_1";
	global.__objectNames[18] = "obj_enemy_control";
	global.__objectNames[19] = "obj_enemy_shot_parent";
	global.__objectNames[20] = "obj_enemy_basic_shot";
	global.__objectNames[21] = "obj_enemy_shot_long";
	global.__objectNames[22] = "obj_shield_enemy_basic";
	global.__objectNames[23] = "obj_enemy_large_1";
	global.__objectNames[24] = "obj_turret_1";
	global.__objectNames[25] = "obj_explosion_enemy_on_player";
	global.__objectNames[26] = "obj_enemy_explosion_1";
	global.__objectNames[27] = "obj_explosion_on_enemy";
	global.__objectNames[28] = "obj_drone_explosion";
	global.__objectNames[29] = "obj_bg_handler";
	global.__objectNames[30] = "obj_wave_handler";
	global.__objectNames[31] = "obj_score_control";
	global.__objectNames[32] = "obj_opening";
	global.__objectNames[33] = "obj_tutorial";
	global.__objectNames[34] = "obj_game_over";
	global.__objectNames[35] = "obj_armor_bonus";
	global.__objectNames[36] = "obj_shield_bonus";
	global.__objectNames[37] = "obj_power_bonus";
	global.__objectNames[38] = "obj_shot_speed_bonus";
	global.__objectNames[39] = "obj_prize_parent";
	global.__objectNames[40] = "obj_pos_and_neg_parent";
	global.__objectNames[41] = "obj_positives";
	global.__objectNames[42] = "obj_negatives";
	global.__objectNames[43] = "obj_blank";
	global.__objectNames[44] = "obj_bubble";
	global.__objectNames[45] = "obj_set_tutorial";
	global.__objectNames[46] = "obj_set_debug";
	global.__objectNames[47] = "obj_debug_ship_selector";
	global.__objectNames[48] = "obj_arrow_2";
	global.__objectNames[49] = "obj_arrow";
	global.__objectNames[50] = "obj_start";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
