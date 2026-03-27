/// @description determine destruction capability
if (can_be_destroyed == 1)
{
    if (x < -32 || x > room_width + 32 || y < -32 || y > room_height + 32)
    {
        instance_destroy();
    }

}

if ( x > -1 && x < room_width && y > -1 && y < room_height)
{
can_be_destroyed = 1; //I don't want this destroyed if outside room unless it's made an appearance 1st
}
//show_debug_message("Can be destroyed = " + string(can_be_destroyed));

