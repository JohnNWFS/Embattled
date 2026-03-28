/// @description remain with player
if (!instance_exists(obj_player))
{
    instance_destroy();
    exit;
}

x = obj_player.x -10;
y = obj_player.y;
image_speed = .3;
if (obj_player.i_am_docked == 1 || obj_wave_handler.wave < 0) //no flame if docked or initial start
{
visible = 0;
}

