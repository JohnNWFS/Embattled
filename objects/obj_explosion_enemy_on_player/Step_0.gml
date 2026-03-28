/// @description keep aligned with player
if (!instance_exists(obj_player))
{
    instance_destroy();
    exit;
}

x = obj_player.x - my_x_offset;
y = obj_player.y - my_y_offset;
