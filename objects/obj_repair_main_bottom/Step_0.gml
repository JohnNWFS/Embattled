/// @description stick with top
if (instance_exists(obj_repair_main))
{
    x = obj_repair_main.x;
    y = obj_repair_main.y;
}
else
{
    instance_destroy();
    exit;
}


if (instance_exists(obj_repair_dock) && obj_repair_dock.show_docked_message == 1 && x < -64)
{
    instance_destroy();
}
