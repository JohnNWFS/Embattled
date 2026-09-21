/// @description handle player collision

var the_other = instance_place(x,y,obj_player_parent);
if (instance_exists(the_other))
{
//show_debug_message(increase_armor);
//show_debug_message("became");

if (add_a_shield == 1)
    {
    if (instance_exists(the_other.my_shield) && variable_instance_exists(the_other.my_shield, "hp_original")) //if I already have a shield
    {
        the_other.my_shield.hp = the_other.my_shield.hp_original; //maximimze hit points
    }
    else //If I don't have a shield at all, spawn it
    {
    the_other.my_shield = instance_create(x-9,y+1,obj_shield);
    the_other.my_shield.visible = 1;
    the_other.my_shield_on = 1;
    }

}


if (the_other.hp + increase_armor > the_other.max_hp) {increase_armor = the_other.max_hp - the_other.hp;}
the_other.hp +=  increase_armor;
//show_debug_message(increase_armor);

//show_debug_message(string(the_other.shot_delay) + " " + string((increase_shot_speed)));
the_other.shot_delay += increase_shot_speed; //reduces timer between shots
the_other.powerup_sheen_timer = the_other.powerup_sheen_duration;

if(increase_armor > 0) {scr_draw_pos_neg(increase_armor,obj_player,"armor");}

if(increase_shot_power == 1)
{
if (the_other.my_shot_power < 6) {
the_other.my_shot_power += increase_shot_power;
}
the_other.alarm[1] = the_other.power_up_timer; //5 seconds of bonus power time. 5 seconds later power drop.
//if a P is picked up at power 5, another 5 seconds is added
}

scr_fx_burst("pickup", x, y, 1);
scr_sfx("pickup");
instance_destroy();

}

if (chase_player == 1)
{
if (instance_exists(obj_player))
{
move_towards_point(obj_player.x + 16, obj_player.y + 16,4);
}
}

if (irandom(8) == 0)
{
    scr_fx_burst("pickup", x, y, 1);
}
