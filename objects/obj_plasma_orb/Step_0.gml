/// @description handle orb damage
//destroy if outside room
if (x < -128 || x > room_width+128 || y < y-128 || y > room_height + 128)
{instance_destroy();}

var inst = instance_place(floor(x),floor(y),obj_enemy_parent);

if (inst > -1)
{
    if (inst.enemy_hp - shot_power > 0)
    {
    //perhaps change from flame to zappy look
//    var new_flame = instance_create(x,y,obj_explosion_on_enemy); 
//    show_debug_message("new_flame.x " + string(new_flame.x));
//    show_debug_message("new_flame.y " + string(new_flame.y));
    
    //new_flame.who_i_hit = inst;
    //new_flame.my_x1 = x;
    //new_flame.my_y1 = y;
    //new_flame.my_x_offset = inst.x - new_flame.x;
    //new_flame.my_y_offset = inst.y - new_flame.y;
}
    var power_reduction = inst.enemy_hp; //determine hp of enemy
    inst.enemy_hp -= shot_power; //reduce enemy's hp by shot power
    shot_power -= power_reduction; //drop shot power by the number of points of hp reduced
    scr_draw_pos_neg(-shot_power,inst,"hp");
    
}

var enemy_check = instance_position(target_x + (5*cos(line_dir+(irandom_range(-3,3))*pi/180)),target_y +(5*sin(line_dir+(irandom_range(-3,3))*pi/180)),obj_enemy_parent)

if (enemy_check > -1)
{
    enemy_check.enemy_hp -= 1;  
    if (shot_power > 0) {shot_power -=1;}//reduce power by 1 for each hit
    scr_draw_pos_neg(-1,inst,"hp");

}

if (shot_power <=0)
{
instance_destroy();
}

