/// @description move the enemy and fire if necessary. Handle Shield

if (x < -10) {firing = 0; }

//if ( x <= -60 || y < -64 || y > room_height + 64) 
//{
//instance_destroy();
//}

if (place_meeting(x,y,obj_player_parent))
{
    player = instance_place(x,y,obj_player_parent);
    player.hp -= enemy_hp;
    enemy_hp = 0;
}

//show_debug_message(string(id) + " " + string(x));
if (enemy_hp <= 0)
{
    score += enemy_value;
    scr_draw_pos_neg(enemy_value,0,"score");
    instance_create(x,y,my_explosion);
    scr_spawn_prize(prize_percent,0,0);
    show_debug_message("Destroyed for hp = 0");
    instance_destroy();
}

if (firing == 1 && alarm[0] == -1)
{
//show_debug_message("Firing");
firing = 0;
if (centered_firing == 0)
{//used for tyhpical ship flying right to left
var shot_fired = instance_create(x-12,y,shot_type);
shot_fired.my_speed = my_shot_speed;
shot_fired.my_target_x = my_shot_x_target;
shot_fired.my_target_y = y;//my_shot_y_target;
shot_fired.my_power = my_power; //transfer power set for enemy to shot
}
if (centered_firing == 1)
{ //for enemies like turrets with centered views
var shot_fired = instance_create(x-24,y-20,shot_type);
shot_fired.my_speed = my_shot_speed;
shot_fired.my_target_x = obj_player.x;
shot_fired.my_target_y = obj_player.y;//my_shot_y_target;
shot_fired.my_power = my_power; //transfer power set for enemy to shot

}

alarm[0] = my_fire_speed;
}
/*
my_fire_speed = 60;
my_shot_speed = 6;
shot_type = obj_enemy_basic_shot;
*/

///spawn a shield if has one
if (has_shield == 1 && spawned_shield == 0)
{
spawned_shield = 1;
my_shield = instance_create(x,y,obj_shield_enemy_basic);
my_shield.hp_original = shield_strength; //set shield to initial value
my_shield.my_owner = id;
}

if (!instance_exists(my_shield)) {has_shield = 0;} //get rid of flag if shield gone

if (x < -128 || x > room_width +500 || y < -128 || y > room_height + 128)
{
instance_destroy();
}

/* */
/*  */
