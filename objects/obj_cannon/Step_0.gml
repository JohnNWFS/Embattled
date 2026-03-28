/// @description position cannon
if (!instance_exists(obj_player))
{
    instance_destroy();
    exit;
}

if (fix_xy == 0)
{
      x = obj_player.x+13;
      y = obj_player.y+23;
}

if (fix_xy == 1)
{
    if (one_time_move == 0)
    {
       one_time_move = 1;
       x = obj_player.x+13;
       y = obj_player.y+23;
    }
}   
var long_shot_check = obj_player.plasma_counter;

if (keyboard_check_released(vk_space) && alarm[0] == -1 )
{
if (long_shot_check != obj_player.plasma_release)
    {
    var inst = instance_create(x+9,y+3,obj_shot_long);
    inst.shot_speed = 5;
    inst.shot_power = obj_player.my_shot_power;
    }
    alarm[0] = obj_player.shot_delay - 2;
}

if (hp <=0)
{

instance_destroy();
}

