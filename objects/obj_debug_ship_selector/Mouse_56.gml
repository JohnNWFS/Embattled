/// @description spawn enemy
if (mouse_x > (room_width-32))
{
        var enemy_spawn = instance_create(room_width+64,mouse_y,obj_enemy_1);
        scr_enemy_type(enemy_spawn,actual_number,obj_wave_handler.path_straight,-1); 
}

