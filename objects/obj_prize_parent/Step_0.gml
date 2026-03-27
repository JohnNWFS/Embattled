/// @description handle player collision

the_other = place_meeting(x,y,obj_player_parent);
if (the_other)
{
//show_debug_message(increase_armor);
//show_debug_message("became");

if (add_a_shield == 1 && instance_exists(obj_player.my_shield))
    {
    if (obj_player.my_shield) //if I already have a shield
    {
        obj_player.my_shield.hp = obj_player.my_shield.hp_original; //maximimze hit points
    }
    if (!obj_player.my_shield) //If I don't have a shield at all, spawn it
    {
    obj_player.my_shield = instance_create(x-9,y+1,obj_shield);
    obj_player.my_shield.visible = 1;
    }

}


if (the_other.hp + increase_armor > the_other.max_hp) {increase_armor = the_other.max_hp - the_other.hp;}
the_other.hp +=  increase_armor;
//show_debug_message(increase_armor);

//show_debug_message(string(the_other.shot_delay) + " " + string((increase_shot_speed)));
the_other.shot_delay += increase_shot_speed; //reduces timer between shots

if(increase_armor > 0) {scr_draw_pos_neg(increase_armor,obj_player,"armor");}

if(increase_shot_power  = 1)
{
if (the_other.my_shot_power < 6) {
the_other.my_shot_power += increase_shot_power;
}
obj_player.alarm[1] = obj_player.power_up_timer; //5 seconds of bonus power time. 5 seconds later power drop.
//if a P is picked up at power 5, another 5 seconds is added
}

instance_destroy();

}

if (chase_player == 1)
{
move_towards_point(obj_player.x, obj_player.y,4);
}

