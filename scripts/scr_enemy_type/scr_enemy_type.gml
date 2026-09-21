/// @description scr_enemy_type(enemyid, enemy type, path type, timer)
/// @param enemyid
/// @param  enemy type
/// @param  path type
/// @param  timer
function scr_enemy_type() {
	enemy_id = argument[0];
	enemy_type = argument[1];
	path_type_to_use = argument[2];
	time_trigger = argument[3];
	switch (enemy_type)
	{
	case 1: //straight and simple

	        enemy_id.enemy_speed_x = 30; //enemy speed (path speed)
	        enemy_id.enemy_value = 10; 
	        enemy_id.enemy_may_have_prize = 1;
	        enemy_id.enemy_hp = 4;
	        enemy_id.firing = 1;
	        enemy_id.my_fire_speed  = 150;
	        enemy_id.alarm[0] = enemy_id.my_fire_speed;
	        enemy_id.my_speed = 6; //normally 6
	        enemy_id.my_power = 3; //damage dealt
	        enemy_id.shot_type = obj_enemy_basic_shot;
	        enemy_id.my_shot_x_target = -64;
	        enemy_id.my_shot_y_target = enemy_id.y; 
	        with(enemy_id) {path_start(other.path_type_to_use, enemy_speed_x, path_action_stop, 0);}
	        //with(enemy_id) {path_start(other.path_type_to_use, 1, path_action_stop, 0);}

	        break;

	case 2: 
	        enemy_id.enemy_speed_x = 50;
	        enemy_id.enemy_value = 10;
	        enemy_id.enemy_may_have_prize = 1;
	        enemy_id.enemy_hp = 2;
	        enemy_id.firing = 1;
	        enemy_id.my_fire_speed  = 60;
	        enemy_id.alarm[0] = enemy_id.my_fire_speed;
	        enemy_id.my_speed = 6;
	        enemy_id.my_power = 1; //damage dealt
	        enemy_id.shot_type = obj_enemy_basic_shot;
	        enemy_id.my_shot_x_target = -64;
	        enemy_id.my_shot_y_target = enemy_id.y; 
	        with(enemy_id) {path_start(other.path_type_to_use, enemy_speed_x, path_action_stop, 0);}
	        break;

	case 3: 
	        enemy_id.enemy_speed_x = 60;
	        enemy_id.enemy_value = 10;
	        enemy_id.enemy_may_have_prize = 1;
	        enemy_id.enemy_hp = 1;
	        enemy_id.firing = 1;
	        enemy_id.my_fire_speed  = 60;
	         enemy_id.alarm[0] = enemy_id.my_fire_speed;
	        enemy_id.my_speed = 6;
	        enemy_id.my_power = 1; //damage dealt
	        enemy_id.shot_type = obj_enemy_basic_shot;
	        enemy_id.my_shot_x_target = -64;
	        enemy_id.my_shot_y_target = enemy_id.y; 
	        with(enemy_id) {        path_start(other.path_type_to_use, enemy_speed_x, path_action_stop, 0);              }
	//        with(enemy_id) {path_start(other.path_type_to_use, 1, path_action_stop, 0);}

	                break;

	case 4: //this is the big enemy with two turrets
	        enemy_id.enemy_speed_x = 20;
	        enemy_id.enemy_value = 25;
	        enemy_id.enemy_may_have_prize = 1;
	        enemy_id.enemy_hp = 25;
	        enemy_id.firing = 0;
	        enemy_id.my_power = 5;
	        enemy_id.my_speed = 4;
	        enemy_id.prize_percent = 100;
	        with(enemy_id) {path_start(other.path_type_to_use, enemy_speed_x, path_action_stop, 0);              }
	//        with(enemy_id) {path_start(other.path_type_to_use, 1, path_action_stop, 0);}

	                break;

	case 5: //straight and simple and weak doesn't fire
	        enemy_id.enemy_speed_x = 30; //enemy speed (path speed)
	        enemy_id.enemy_value = 5; 
	        enemy_id.enemy_may_have_prize = 0;
	        enemy_id.enemy_hp = 2;
	        enemy_id.firing = 0;
	        enemy_id.my_fire_speed  = 0;
	        enemy_id.has_shield = 1;
	        enemy_id.shield_strength = 5;
	        //enemy_id.alarm[0] = enemy_id.my_fire_speed;
	        enemy_id.my_speed = 4; //normally 6
	        //enemy_id.my_power = 3; //damage dealt
	        //enemy_id.shot_type = obj_enemy_basic_shot;
	        //enemy_id.my_shot_x_target = -64;
	        //enemy_id.my_shot_y_target = enemy_id.y; 
	        with(enemy_id) {path_start(other.path_type_to_use, enemy_speed_x, path_action_stop, 0);}
	        //with(enemy_id) {path_start(other.path_type_to_use, 1, path_action_stop, 0);}
	        break;

	        case 6: //basic shooter straight flyer with enemy 2 shot (long) 
	        enemy_id.enemy_speed_x = 50;
	        enemy_id.enemy_value = 10;
	        enemy_id.enemy_may_have_prize = 1;
	        enemy_id.enemy_hp = 2;
	        enemy_id.firing = 1;
	        enemy_id.my_fire_speed  = 60;
	        enemy_id.alarm[0] = enemy_id.my_fire_speed;
	        enemy_id.my_speed = 6;
	        enemy_id.my_power = 1; //damage dealt
	        enemy_id.shot_type = obj_enemy_shot_long;
	        enemy_id.my_shot_x_target = -64;
	        enemy_id.my_shot_y_target = enemy_id.y; 
	        with(enemy_id) {path_start(other.path_type_to_use, enemy_speed_x, path_action_stop, 0);}
	        break;

	case 7: // kamikaze dart
	        enemy_id.enemy_speed_x = 70;
	        enemy_id.enemy_value = 15;
	        enemy_id.enemy_may_have_prize = 0;
	        enemy_id.enemy_hp = 4;
	        enemy_id.firing = 0;
	        enemy_id.my_power = 8;
	        enemy_id.kamikaze = 1;
	        enemy_id.prize_percent = 5;
	        with(enemy_id) {path_start(other.path_type_to_use, enemy_speed_x, path_action_stop, 0);}
	        break;

	case 8: // strafer
	        enemy_id.enemy_speed_x = 80;
	        enemy_id.enemy_value = 12;
	        enemy_id.enemy_may_have_prize = 1;
	        enemy_id.enemy_hp = 2;
	        enemy_id.firing = 1;
	        enemy_id.my_fire_speed = 45;
	        enemy_id.alarm[0] = enemy_id.my_fire_speed;
	        enemy_id.my_speed = 7;
	        enemy_id.my_power = 1;
	        enemy_id.shot_type = obj_enemy_basic_shot;
	        enemy_id.my_shot_x_target = -64;
	        enemy_id.my_shot_y_target = enemy_id.y;
	        with(enemy_id) {path_start(other.path_type_to_use, enemy_speed_x, path_action_stop, 0);}
	        break;

	case 9: // shield carrier
	        enemy_id.enemy_speed_x = 28;
	        enemy_id.enemy_value = 20;
	        enemy_id.enemy_may_have_prize = 1;
	        enemy_id.enemy_hp = 6;
	        enemy_id.firing = 1;
	        enemy_id.my_fire_speed = 90;
	        enemy_id.alarm[0] = enemy_id.my_fire_speed;
	        enemy_id.has_shield = 1;
	        enemy_id.shield_strength = 8;
	        enemy_id.my_power = 2;
	        enemy_id.shot_type = obj_enemy_basic_shot;
	        enemy_id.prize_percent = 25;
	        with(enemy_id) {path_start(other.path_type_to_use, enemy_speed_x, path_action_stop, 0);}
	        break;

	}





}
