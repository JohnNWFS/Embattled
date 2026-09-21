/// @description set variables
image_speed = .3;
if (!instance_exists(obj_player))
{
    instance_destroy();
    exit;
}
my_x1 = obj_player.x;
my_y1 = obj_player.y;

my_x_offset = my_x1 - x;
my_y_offset = my_y1 - y;

scr_fx_burst("explode_player", x, y, 1);
scr_sfx("hurt");
