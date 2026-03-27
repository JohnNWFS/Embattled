/// @description stay with player
if (object_exists(obj_player))
{
x = obj_player.x-10;
y = obj_player.y+2;

}
if (!object_exists(obj_player) || hp <=0)
{
obj_player.my_shield = -1;
instance_destroy();
}

image_alpha = hp/hp_original;//lighten shield as it approaches destruction





