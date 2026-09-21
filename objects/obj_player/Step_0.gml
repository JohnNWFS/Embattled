/// @description handle move and shot
event_inherited();
if (instance_exists(obj_wave_handler))//to handle end game, have to ignore when wave handler disabled
{
    if (obj_wave_handler.wave == .5)
    { 
    if (instance_exists(our_thrust)) { our_thrust.visible = 0; }
    }
}    

if (visible == 1)
{
    if (keyboard_check_released(vk_space) && alarm[0] == -1 && plasma_counter != plasma_release)
    {
    if (plasma_counter < 120) {plasma_counter = 0;} //stop plasma counter}
    var inst = instance_create(x+20,y+20,obj_shot1);
    // handle player ship fire    
    inst.shot_speed = 4;
    inst.shot_power = my_shot_power;
    alarm[0] = shot_delay;
    scr_fx_burst("muzzle", x+24, y+20, 1);
    scr_sfx("shot_player");
    //handle drone 1 fire if it exists
        if (instance_exists(obj_drone_1))
    {
    var inst_drone1_shot = instance_create(obj_drone_1.x+20,obj_drone_1.y+16,obj_shot1);
    inst_drone1_shot.shot_speed = 3;
    inst_drone1_shot.shot_power = my_shot_power-1;
    if (inst_drone1_shot.shot_power < 1) { inst_drone1_shot.shot_power =1;}
    }
    //handle drone 2 fire if it exists - two code sets in case I want to deal w' seperately
    if (instance_exists(obj_drone_2))
    {
    var inst_drone2_shot = instance_create(obj_drone_2.x+20,obj_drone_2.y+16,obj_shot1);
    inst_drone2_shot.shot_speed = 3;
    inst_drone2_shot.shot_power = my_shot_power-1;
    if (inst_drone2_shot.shot_power < 1) { inst_drone2_shot.shot_power =1;}
    }
    }
    
    if (keyboard_check(vk_up) || keyboard_check(ord("W")) && y-vert_speed > 16)
    {
    y -= vert_speed;
    //handle drone 1 move 
    if (instance_exists(obj_drone_1))
        {
       if (obj_drone_1.y + vert_speed < y + -obj_drone_1.specific_y_offset)
            {        
            obj_drone_1.y += vert_speed-1;   
            }
            else
            {
            obj_drone_1.y = y + -obj_drone_1.specific_y_offset;
            }
        }
    //handle drone 2 move
        if (instance_exists(obj_drone_2))
        {
            if (obj_drone_2.y - vert_speed - 3 > y + -obj_drone_2.specific_y_offset+10)
            {obj_drone_2.y -= vert_speed + 3;}
        }
}
    if (keyboard_check(vk_down) || keyboard_check(ord("S")) && y+vert_speed < room_height - 64)
    {
    y += vert_speed;
    //handle drone 1 move
        if (instance_exists(obj_drone_1))
        {
        if (obj_drone_1.y - vert_speed > obj_player.y + obj_drone_1.specific_y_offset+10)
            {        
            obj_drone_1.y -= vert_speed-1;   
            }
        else
            {
            obj_drone_1.y = y + obj_drone_1.specific_y_offset+10;
            }
        }
    //handle drone 2 move
        if (instance_exists(obj_drone_2))
        {
        if (obj_drone_2.y + vert_speed + 3 < y + obj_drone_2.specific_y_offset)
        obj_drone_2.y += vert_speed+3;
        }
   
 }
    
    if ((x+hor_speed < room_width - 200) && (keyboard_check(vk_right) || keyboard_check(ord("D"))) )//max right
    {
        x+= hor_speed;
        if (instance_exists(our_thrust)) { our_thrust.visible = 1; } //make sure we can see thrust if move right
        show_debug_message(string(x) + " " + string(room_width-200));
    }

       if ((x-hor_speed > 16) && (keyboard_check(vk_left) || keyboard_check(ord("A"))) )
    {
        x-=hor_speed;
        show_debug_message(x);
    }
    //show_debug_message(string(x) + " " + string(hor_speed));
    //show_debug_message(obj_bg_handler.tile_speed);
    if (y<16) {y=16;}
    if(y> room_height - 64) {y= room_height - 64;}
    }//end if visible == 1
    
//handle plasma
if (plasma_available == 1)
{
    if (keyboard_check(vk_space)) //if pressed, start counting 
    {
        plasma_counter += 1;
        if (plasma_counter > plasma_release) {plasma_counter = plasma_release} //hang on to shot until space released
    }
}

        if (plasma_counter >= plasma_release && keyboard_check_released(vk_space))
        {
            plasma_counter = 0;
            instance_create(x+36,y+18,obj_plasma_orb);
        }

if (plasma_available == 0)
{
    plasma_counter = 0;    
} 
    
    
