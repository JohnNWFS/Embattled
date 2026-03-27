/// @description finish light show and undock
light_show = 0;
docked = 0;
can_dock = 0;
show_over = 1;
obj_player.i_am_docked = 0;
friction = 0;
obj_player.depth = player_depth;
obj_player_thrust.visible = 1;


if (obj_wave_handler.wave > 1)
{
    test = instance_create(x,y,obj_shield_bonus);
    with(test)
    {add_a_shield = 1;  //spawn a shield as a wave completion reward
    alarm[1] = 60;
    move_towards_point(x+10,y-10,2);
    }
    
}

if (obj_wave_handler.wave = 10.5)
{
instance_create(obj_player.x+14,obj_player.y+6,obj_cannon);
//show_debug_message("Cannon");
}

move_towards_point(-256,y,4);
visible = 0;

with(obj_repair_main)
{
    move_towards_point(-256,y,4);
    friction = 0;
    obj_wave_handler.alarm[0] = 180;
}
 


