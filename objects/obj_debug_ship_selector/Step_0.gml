/// @description get mouse actions and modify as needed
var max_number = 6;
if (spawn_mode == 1) { max_number = 4; }
if (spawn_mode == 2) { max_number = 1; }

if (mouse_check_button_pressed(mb_left) && mouse_x <= bbox_right && mouse_x >= bbox_left)
    {
    mouse_selected = 1;
    mouse_selected_x = mouse_x;
    mouse_selected_y = mouse_y;
    }

if (mouse_check_button_released(mb_right))
    {
    mouse_selected = 0;
    }

track_number = new_number;
if (mouse_y > mouse_selected_y && mouse_selected == 1 && mouse_y <= bbox_bottom && mouse_y >= bbox_top)
    {
    if(new_number - 1 > 0)
        {
            new_number -= 1;
    
        if (new_number < 10) 
        {
        ones_new = new_number;
        ones = new_number +1;
        tens_new = 0;
        if (new_number + 1 == 10) {tens = 1;}
        }
        if (new_number > 10)
        {
            ones_new = new_number mod 10;
            ones = ones_new div 10;
            tens_new = floor(new_number/10);
            tens = floor((new_number+1)/10)
        }
        if(new_number == 10)
        {
        ones_new = 0;
        ones = 1;
        tens_new = 1;
        tens = 1;
        }
            
        alarm[0] = rotation_speed;
        }
mouse_selected = 0;

    }

if (mouse_y < mouse_selected_y  && mouse_selected == 1 && mouse_y <= bbox_bottom && mouse_y >= bbox_top)
    {
    if (new_number + 1 < max_number + 1)
    {
    new_number += 1;
    if (new_number < 10) 
    {
    ones_new = new_number;
    ones = new_number -1;
    tens = 0;
    tens_new = 0;
    }
    if (new_number > 10)
    {
        ones_new = new_number mod 10;
        ones = ones_new div 10;
        tens_new = floor(new_number/10);
        tens = floor((new_number-1)/10)
    }
    if(new_number == 10)
    {
    ones_new = 0;
    ones = 9;
    tens_new = 1;
    tens = 0;
    }
    
    alarm[0] = rotation_speed;
    
    }
    mouse_selected = 0;
    }
    
if (rotate_counter == 0)
{
    if(actual_number < 10)
    {
        ones = actual_number;
        tens = 0;
    }
    if(actual_number == 10)
    {
        ones = 0;
        tens = 1;
    }
    if (actual_number > 10)
    {
        ones = actual_number mod 10;
        tens = floor((actual_number)/10)    
    }
}
//    show_debug_message(string(tens) + ":" + string(ones));

if (rotate_counter == 0)
{
    if (actual_number > max_number) { actual_number = max_number; }
    if (new_number > max_number) { new_number = max_number; }
    if (spawn_mode == 0)
    {
        enemy_type_id = actual_number;
    }
    if (spawn_mode == 1)
    {
        reward_type_id = actual_number;
    }
}

if (mouse_check_button_pressed(mb_left))
{
    var spawn_clicked = false;
    var ui_clicked = false;

    if (mouse_x >= x + 18 && mouse_x <= x + 72 && mouse_y >= y + 14 && mouse_y <= y + 24)
    {
        spawn_mode = 0;
        actual_number = enemy_type_id;
        new_number = enemy_type_id;
        ui_clicked = true;
    }
    if (mouse_x >= x + 18 && mouse_x <= x + 80 && mouse_y >= y + 28 && mouse_y <= y + 38)
    {
        spawn_mode = 1;
        actual_number = reward_type_id;
        new_number = reward_type_id;
        ui_clicked = true;
    }
    if (mouse_x >= x + 18 && mouse_x <= x + 60 && mouse_y >= y + 42 && mouse_y <= y + 52)
    {
        spawn_mode = 2;
        actual_number = 1;
        new_number = 1;
        ui_clicked = true;
    }
    if (mouse_x >= x + 84 && mouse_x <= x + 152 && mouse_y >= y + 14 && mouse_y <= y + 24)
    {
        enemy_type_id += 1;
        if (enemy_type_id > 6) { enemy_type_id = 1; }
        if (spawn_mode == 0)
        {
            actual_number = enemy_type_id;
            new_number = enemy_type_id;
        }
        ui_clicked = true;
    }
    if (mouse_x >= x + 84 && mouse_x <= x + 152 && mouse_y >= y + 28 && mouse_y <= y + 38)
    {
        reward_type_id += 1;
        if (reward_type_id > 4) { reward_type_id = 1; }
        if (spawn_mode == 1)
        {
            actual_number = reward_type_id;
            new_number = reward_type_id;
        }
        ui_clicked = true;
    }
    if (mouse_x >= x + 18 && mouse_x <= x + 88 && mouse_y >= y + 60 && mouse_y <= y + 70)
    {
        path_mode += 1;
        if (path_mode > 5) { path_mode = 0; }
        ui_clicked = true;
    }

    if (mouse_x >= room_width - 74 && mouse_x <= room_width - 4 && mouse_y >= 2 && mouse_y <= 18)
    {
        spawn_clicked = true;
        ui_clicked = true;
    }

    if (spawn_mode == 0 && !ui_clicked && mouse_x >= room_width * 0.75)
    {
        spawn_target_y = clamp(mouse_y, 24, room_height - 24);
    }

    if (spawn_clicked)
    {
        var spawn_y = clamp(spawn_target_y, 24, room_height - 24);

        switch (spawn_mode)
        {
        case 0:
            var enemy_object = obj_enemy_1;
            var path_to_use = obj_wave_handler.path_straight;
            if (enemy_type_id == 4) { enemy_object = obj_enemy_large_1; }

            switch (path_mode)
            {
            case 0: path_to_use = obj_wave_handler.path_straight; break;
            case 1: path_to_use = obj_wave_handler.path_up_down; break;
            case 2: path_to_use = obj_wave_handler.path_down_up; break;
            case 3: path_to_use = obj_wave_handler.path_rotate_enemy; break;
            case 4: path_to_use = obj_wave_handler.path_rotate_enemy_2; break;
            case 5: path_to_use = obj_wave_handler.path_high_peaks; break;
            }

            var enemy_spawn = instance_create(room_width+64,spawn_y,enemy_object);
            scr_enemy_type(enemy_spawn,enemy_type_id,path_to_use,-1);
            break;

        case 1:
            var prize_object = obj_armor_bonus;
            switch (reward_type_id)
            {
            case 1: prize_object = obj_armor_bonus; break;
            case 2: prize_object = obj_power_bonus; break;
            case 3: prize_object = obj_shot_speed_bonus; break;
            case 4: prize_object = obj_shield_bonus; break;
            }

            var prize_spawn = instance_create(room_width-16,spawn_y,prize_object);
            prize_spawn.chase_player = 1;
            prize_spawn.word_to_use = 3;
            if (instance_exists(obj_player))
            {
                with (prize_spawn)
                {
                    move_towards_point(obj_player.x + 16, obj_player.y + 16, 3);
                }
            }
            break;

        case 2:
            if (!instance_exists(obj_repair_main))
            {
                var dock_spawn = instance_create(-128,room_height/2-32,obj_repair_main);
                with (dock_spawn)
                {
                    image_speed = .2;
                    move_towards_point(128,room_height/2-32,1);
                    stop_at_x = 128;
                    can_dock = 1;
                }
            }
            break;
        }
    }
}
