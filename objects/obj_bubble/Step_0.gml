/// @description follow if attached
if (object_exists(my_attached))
{
    my_attached.my_follower = id;

//show_debug_message("attached");
}

if (object_exists(my_attached))
{
    x = my_attached.x + my_xoffset;
    y = my_attached.y + my_yoffset;
}


if (kill_me == 1)
{
if (!instance_find(obj_enemy_1,0)) {alarm[0]=1;}
}

if (my_life > 0)
{
alarm[1] = my_life;
my_life = 0;
}

if (x <0 || x > room_width || y < 0 || y > room_height)
{
instance_destroy();
}

