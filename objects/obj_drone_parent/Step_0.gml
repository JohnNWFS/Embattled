/// @description keep up with player
x = obj_player.x;

if (hp <= 0)
{
instance_create(x,y,obj_drone_explosion);
instance_destroy();
}

