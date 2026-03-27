/// @description check for position, handle show

if (object_exists(obj_player) && can_dock == 1)
{
//show_debug_message("abs(obj_player.x-x) " + string(abs(obj_player.x-x)) + " (abs(obj_player.y-y) " + string(abs(obj_player.y-y)));
    if ((abs(obj_player.x-x) > 13) && (abs(obj_player.x-x) < 18) && (abs(obj_player.y-y) > 4) && (abs(obj_player.y-y) < 8 )) //magic range to dock
    {
    
        if (object_exists(obj_cannon))
        {
           fix_xy = 1;
        }
        //show_debug_message("spot achieved abs(obj_player.x-x) " + string(abs(obj_player.x-x)) + " (abs(obj_player.y-y) " + string(abs(obj_player.y-y)));
        docked = 1;
        //obj_player.x = 16;
        //obj_player.y = 6;
    }
}

if (docked == 1)
{
    obj_player.i_am_docked = 1;
    obj_player.x = obj_repair_dock.x + 16;
    obj_player.y = obj_repair_dock.y + 6;
}

if (docked == 1 & light_show == 0)
{
    can_dock = 0;
    light_show = 1;
    alarm[0] = 240;
} 

if (show_docked_message==1 && x < -64)
{
    if (instance_exists(obj_cannon))
    {
        obj_cannon.fix_xy = 0; //make sure cannon stays put
    }
    instance_destroy();
}

if(instance_exists(obj_repair_main))
{
x = obj_repair_main.x;
y = obj_repair_main.y;
}

if (docked == 1)
{
    if (obj_player.hp < obj_player.max_hp)
    {
    obj_player.hp +=1;
    }
}

