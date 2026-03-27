/// @description Make sure ship shows up 
if (obj_wave_handler.wave == 0){
    if (instance_exists(obj_repair_dock) && obj_player.visible == 0)
    {
        draw_sprite_ext(spr_player,0,obj_repair_dock.x+16,obj_repair_dock.y+6,1,1,0,c_white,1);
       // show_debug_message(obj_wave_handler.wave);
    }
}



