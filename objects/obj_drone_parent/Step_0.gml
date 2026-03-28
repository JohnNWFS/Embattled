/// @description keep up with player
if (!instance_exists(obj_player))
{
    instance_destroy();
    exit;
}

x = obj_player.x;

if (hp <= 0)
{
instance_create(x,y,obj_drone_explosion);
instance_destroy();
}
