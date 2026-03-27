/// @description stick with top
x = obj_repair_main.x;
y = obj_repair_main.y;


    if (obj_repair_dock.show_docked_message==1 && x < -64)
{
    instance_destroy();
}

