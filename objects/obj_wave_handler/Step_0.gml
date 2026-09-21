/// @description Trigger Waves
//show_debug_message("Wave = " + string(wave));
if (trigger == 1 && global.tutorial == 0 && global.debug == 0) //no waves while tutorial or debug on. trigger causes wave to spawn
{
    var test = noone;
    var dock = noone;
    var my_drone = noone;
    trigger = 0;
    switch(wave)
    {
        //define enemies in wave, set them on a path and then set alarm for next wave
        //First variable is "just" a variable for the instance (test)
        //Next choose the enemy type
        //then choose the path type
        //finally choose the timer length (60 - 1 second)... only the last one matters

        case -.5:
        var bubble = instance_create(0,0,obj_bubble);
        with (bubble)
        {
        my_xoffset = 7;
        my_yoffset = 4;
        my_life = 180;
        my_message = "WELCOME TO|EMBATTLED!|GET READY";
        letters_xscale = .75;
        letters_yscale = .75;
        image_index = 1; //use tailess bubble
        image_xscale = 1.85;
        image_yscale = 1.2;
        x = room_width/2-60;
        y = room_height/2-32;
        if (instance_exists(obj_player)) { obj_player.x = room_width; }
        }
         alarm[0]=240;
        break;

                
        case .5:
        var dock = instance_create(-128,room_height/2-32,obj_repair_main);
        with(dock)
        {
        dock.image_speed = .2;
        move_towards_point(128,room_height/2-32,1);
        stop_at_x = 128;
        can_dock = 1;
        }
        wave -= .5; //reset to allow next instance to be 1
        time_trigger = -1;
        break;

        case 0:
        if (instance_exists(obj_player) && instance_exists(obj_player.our_thrust)) { obj_player.our_thrust.visible = 1; }
        break;
        
        case 1:
        var enemy_spawn = instance_create(room_width+64,(room_height / 2)-32,obj_enemy_1);
        scr_enemy_type(enemy_spawn,5,path_straight,450); //simple enemy, straight path
        break;
               
                
        case 2: //Two simple non-firing ships
        var test = instance_create(room_width+64,(room_height / 2)-24,obj_enemy_1);
        scr_enemy_type(test,5,path_straight,-1); //simple enemy, straight path
        test = instance_create(room_width+64,(room_height / 2)+24,obj_enemy_1);
        scr_enemy_type(test,5,path_straight,450); //simple enemy, straight path
        
        break;
        
        case 3: //type 2 needs to be slow but firing
        test = instance_create(room_width+96,-32+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,2,path_rotate_enemy,-1);
        test = instance_create(room_width+96,32+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,2,path_rotate_enemy_2,300);
        
        break;
        
        case 4:
        test = instance_create(room_width+96,-32+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,2,path_up_down,-1);
        test = instance_create(room_width+96,32+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,2,path_up_down,300);
        break;
        
        case 5:
        test = instance_create(room_width+96,-44+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,3,path_rotate_enemy,-1);
        test = instance_create(room_width+96,(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,3,path_rotate_enemy,-1);
        test = instance_create(room_width+96,44+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,3,path_rotate_enemy,300);           
        break;

        case 6:
        test = instance_create(room_width+128,-116+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,3,path_down_up,-1);
        test = instance_create(room_width+96,-90+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,3,path_down_up,-1);
        test = instance_create(room_width+96,90+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,3,path_up_down,-1);
        test = instance_create(room_width+128,116+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,3,path_up_down,300);           

        test = instance_create(room_width+64,(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,3,path_straight,300);
        break;

        case 7:   //a big guy        
        test = instance_create(room_width+64,-64+(room_height / 2)-16,obj_enemy_large_1);
        scr_enemy_type(test,4,path_straight,780); //simple enemy, straight path, 780ms timer
        break;

        case 8:   //a big guy  plus a couple others      
        test = instance_create(room_width+128,-116+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,3,path_down_up,-1);
        test = instance_create(room_width+64,-64+(room_height / 2)-16,obj_enemy_large_1);
        scr_enemy_type(test,4,path_rotate_enemy,-1); 
        test = instance_create(room_width+128,64+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,3,path_down_up,860);           
        break;
        
        case 9:   //a big guy  plus a couple others      
        test = instance_create(room_width+64,-64+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,2,path_up_down,-1);
        test = instance_create(room_width+64,-64+(room_height / 2),obj_enemy_large_1);
        scr_enemy_type(test,4,path_high_peaks,-1);
        test = instance_create(room_width+128,64+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,2,path_up_down,860);           
        break;

        case 10:   //a big guy  plus a couple others      
        test = instance_create(room_width+64,-64+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,6,path_high_peaks,520);
        test = instance_create(room_width+64,-64+(room_height / 2),obj_enemy_large_1);
        scr_enemy_type(test,4,path_down_up,520);
        test = instance_create(room_width+128,64+(room_height / 2)-16,obj_enemy_1);
        scr_enemy_type(test,6,path_high_peaks,520);
        wave_increment = .5           
        break;

        case 10.5:
        if (instance_exists(obj_enemy_parent)) //we don't want enemies around when dock appears
        {
        //show_debug_message(instance_exists(obj_enemy_parent))
        wave = 10;
        alarm[0] = 30;
        break;
        }
        if (instance_exists(obj_shield)) { with(obj_shield) {instance_destroy();}}
        dock = instance_create(-128,room_height/2,obj_repair_main);
        with(dock)
        {
        dock.image_speed = .2;
        move_towards_point(128,room_height/2-32,1);
        stop_at_x = 128;
        can_dock = 1;
        }
        wave_increment = .5;
        time_trigger = -1;
        break;

        case 11: //add drone 1
        if (!instance_exists(obj_player)) { break; }
        my_drone = instance_create(obj_player.x,obj_player.y-32,obj_drone_1);
        my_drone.image_xscale = .76;
        my_drone.image_yscale = .76;
        my_drone.specific_y_offset =-40;
        time_trigger = 300;
        break;
        
        case 12: //add drone 
        if (!instance_exists(obj_player)) { break; }
        if (instance_exists(obj_drone_1)) {with(obj_drone_1){instance_destroy();}}
        my_drone = instance_create(obj_player.x,obj_player.y-32,obj_drone_1);
        my_drone.image_xscale = .76;
        my_drone.image_yscale = .76;
        my_drone.specific_y_offset =-40;        
        
        var my_drone2 = instance_create(obj_player.x,obj_player.y+32,obj_drone_2);
        my_drone2.image_xscale = .76;
        my_drone2.image_yscale = .76;
        my_drone2.specific_y_offset = 40;
        break;
        
                
                
        case 13:
        test = instance_create(room_width+96, room_height/2 - 40, obj_enemy_strafer);
        scr_enemy_type(test, 8, path_up_down, -1);
        test = instance_create(room_width+96, room_height/2 + 40, obj_enemy_strafer);
        scr_enemy_type(test, 8, path_down_up, 360);
        break;

        case 14:
        test = instance_create(room_width+64, room_height/2 - 16, obj_enemy_kamikaze);
        scr_enemy_type(test, 7, path_straight, 90);
        test = instance_create(room_width+96, room_height/2 + 24, obj_enemy_kamikaze);
        scr_enemy_type(test, 7, path_straight, 280);
        break;

        case 15:
        test = instance_create(room_width+80, room_height/2 - 16, obj_enemy_shield_carrier);
        scr_enemy_type(test, 9, path_rotate_enemy, 420);
        break;

        case 16:
        test = instance_create(room_width+96, room_height/2 - 48, obj_enemy_strafer);
        scr_enemy_type(test, 8, path_high_peaks, -1);
        test = instance_create(room_width+64, room_height/2, obj_enemy_shield_carrier);
        scr_enemy_type(test, 9, path_straight, -1);
        test = instance_create(room_width+96, room_height/2 + 48, obj_enemy_kamikaze);
        scr_enemy_type(test, 7, path_straight, 400);
        break;

        case 17: // recovery / reward
        test = instance_create(room_width+64, room_height/2, obj_enemy_1);
        scr_enemy_type(test, 5, path_straight, 300);
        break;

        case 18:
        test = instance_create(room_width+96, room_height/2 - 50, obj_enemy_strafer);
        scr_enemy_type(test, 8, path_rotate_enemy, -1);
        test = instance_create(room_width+96, room_height/2 + 50, obj_enemy_strafer);
        scr_enemy_type(test, 8, path_rotate_enemy_2, 320);
        break;

        case 19:
        test = instance_create(room_width+80, room_height/2 - 30, obj_enemy_kamikaze);
        scr_enemy_type(test, 7, path_straight, -1);
        test = instance_create(room_width+110, room_height/2, obj_enemy_kamikaze);
        scr_enemy_type(test, 7, path_straight, -1);
        test = instance_create(room_width+80, room_height/2 + 30, obj_enemy_kamikaze);
        scr_enemy_type(test, 7, path_straight, 240);
        break;

        case 20:
        test = instance_create(room_width+64, room_height/2 - 16, obj_enemy_large_1);
        scr_enemy_type(test, 4, path_straight, 900);
        test = instance_create(room_width+128, room_height/2 - 70, obj_enemy_strafer);
        scr_enemy_type(test, 8, path_up_down, -1);
        test = instance_create(room_width+128, room_height/2 + 70, obj_enemy_strafer);
        scr_enemy_type(test, 8, path_down_up, 900);
        break;

        case 21: // mini-boss presentation
        test = instance_create(room_width+96, room_height/2 - 16, obj_enemy_large_1);
        scr_enemy_type(test, 4, path_rotate_enemy, -1);
        test.image_xscale = 1.35;
        test.image_yscale = 1.35;
        test.enemy_hp = 40;
        test.enemy_value = 80;
        test = instance_create(room_width+160, room_height/2 - 80, obj_enemy_shield_carrier);
        scr_enemy_type(test, 9, path_up_down, -1);
        test = instance_create(room_width+160, room_height/2 + 80, obj_enemy_shield_carrier);
        scr_enemy_type(test, 9, path_down_up, 960);
        break;

        default:
        if(irandom_range(0,100) > 50) {
        test = instance_create(room_width+96,-(irandom_range(-64,-32))+room_height / 2,choose_enemy_type());
        scr_enemy_type(test,irandom_range(2,4),choose_enemy_path(),300);
        }
        if(irandom_range(0,100) > 50) {
        test = instance_create(room_width+96,(irandom_range(-32,32)) +room_height / 2,choose_enemy_type());
        scr_enemy_type(test,irandom_range(2,4),choose_enemy_path(),300);
        }
        if(irandom_range(0,100) > 50) {
        test = instance_create(room_width+96,(irandom_range(32,64))+room_height / 2,choose_enemy_type());
        scr_enemy_type(test,irandom_range(2,4),choose_enemy_path(),300);
        }
        
        alarm[0] = 300;
               break;

    }
    if (irandom_range(0,100) < 16 && wave > 1) {scr_spawn_prize(100,1,0);}
    if (wave >= 1 && frac(wave) == 0) { scr_sfx("wave"); }
    alarm[0] = time_trigger;

}  //end no waves while tutorial on. trigger causes wave to spawn

//temp score test
if (obj_player.visible == 1 && !instance_exists(obj_repair_main))
{
score_counter += 1;
    if (score_counter >= 30) //score counter gives points 1/2 a second
    {
    score_counter = 0;
    global.score += 1;
    }
}

///Handle debug options
if (global.debug == 1)
{
obj_player.visible = 1;
if (instance_exists(obj_player) && instance_exists(obj_player.our_thrust)) { obj_player.our_thrust.visible = 1; }
}
