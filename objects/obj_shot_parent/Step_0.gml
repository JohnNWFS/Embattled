/// @description move_shot
move_towards_point(room_width+64,y,shot_speed)
if (x > room_width+32)
{instance_destroy();}

var inst = instance_place(floor(x),floor(y),obj_enemy_parent);

if (inst > -1)
{
    if (inst.enemy_hp - shot_power > 0)
    {
    var new_flame = instance_create(x,y,obj_explosion_on_enemy);
//    show_debug_message("new_flame.x " + string(new_flame.x));
//    show_debug_message("new_flame.y " + string(new_flame.y));
    
    new_flame.who_i_hit = inst;
    new_flame.my_x1 = x;
    new_flame.my_y1 = y;
    new_flame.my_x_offset = inst.x - new_flame.x;
    new_flame.my_y_offset = inst.y - new_flame.y;
}
    inst.enemy_hp -= shot_power;
    scr_draw_pos_neg(-shot_power,inst,"hp");
    instance_destroy();

}

