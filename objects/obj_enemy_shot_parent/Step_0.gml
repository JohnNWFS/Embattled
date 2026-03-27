/// @description destruction, damage, etc
var hit_check = instance_place(x,y,obj_player_parent);
if (hit_check)
{
//    show_debug_message(my_power);
    hit_check.hp -= my_power;
    scr_draw_pos_neg(-my_power,hit_check,"armor");
    instance_create(x,y,obj_explosion_enemy_on_player);
    instance_destroy();   
}

if (move_started == 0)
{
move_started = 1;
move_towards_point(my_target_x, my_target_y, my_speed );

}

//deal with hitting a drone
var hit_check2 = instance_place(x,y,obj_drone_parent);
if (hit_check2)
{
//    show_debug_message(my_power);
    hit_check2.hp -= my_power;
    scr_draw_pos_neg(-my_power,hit_check2,"armor");
    instance_create(x,y,obj_explosion_enemy_on_player);
    instance_destroy();   
}

//deal with hitting the cannon
var hit_check3 = instance_place(x,y,obj_cannon);
if (hit_check3)
{
//    show_debug_message(my_power);
    hit_check3.hp -= my_power;
    scr_draw_pos_neg(-my_power,hit_check3,"armor");
    instance_create(x,y,obj_explosion_enemy_on_player);
    instance_destroy();   
}



